import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToUser = (map, user) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ user.lng, user.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 13.5, duration: 0 });
};


window.addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '56px';
    element.style.height = '56px';


    const newMarker = new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
    mapBoxMarkers.push(newMarker);
  });
};
const addMarkersToMap = window.addMarkersToMap;


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    let userMarker = JSON.parse(mapElement.dataset.user);
    navigator.geolocation.getCurrentPosition(drawMap);
    function drawMap(pos) {
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });

      let markers = JSON.parse(mapElement.dataset.markers);
      //   markers.forEach((marker) => {
      //   new mapboxgl.Marker()
      //   .setLngLat([ marker.lng, marker.lat ])
  		// 	.addTo(map);
      // });
      window.markers = markers;
      window.mapBoxMarkers = []
      var crd = pos.coords;

      userMarker.lat = crd.latitude;
      userMarker.lng = crd.longitude;

      console.log(userMarker.lat);
      console.log(userMarker.lng);
      const popup = new mapboxgl.Popup().setHTML(userMarker.infoWindow); // add this

      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${userMarker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '56px';
      element.style.height = '56px';
      element.style.borderRadius = '50%';
      element.style.border = '2px solid white';
      element.style.boxShadow = '0 0 15px rgba(0,0,0,0.4)';
      new mapboxgl.Marker(element)
        .setLngLat([ userMarker.lng, userMarker.lat ])
        .setPopup(popup) // add this
        .addTo(map);

      if (mapElement) {
        fitMapToUser(map, userMarker);
        }
      addMarkersToMap(map, markers);
      // addMarkersToMap([userMarker]);

      map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
      window.mapbox = map

    }
  }
};
    // const fitMapToMarkers = (map, markers) => {
    //   const bounds = new mapboxgl.LngLatBounds();
    //   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    //   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    // };
    // if (mapElement) {
    //   fitMapToMarkers(map, markers);
    // }

    // const calculateDistance = (user, markers) => {
    //   var minDistance = 1000;
    //   markers.forEach(marker =>
    //     if (abs((user.lng - marker.lng) + (user.lat - marker.lat)) < minDistance) {
    //       minDistance = abs((user.lng - marker.lng) + (user.lat - marker.lat))
    //     })
    //   return minDistance;
    //   };

export { initMapbox };

export { addMarkersToMap };
