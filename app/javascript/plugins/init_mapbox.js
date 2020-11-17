import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
      new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
    });

    const userMarker = JSON.parse(mapElement.dataset.user);
      new mapboxgl.Marker()
      .setLngLat([ userMarker.lng, userMarker.lat ])
      .addTo(map);



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

    const fitMapToUser = (map, user) => {
      const bounds = new mapboxgl.LngLatBounds();
      bounds.extend([ user.lng, user.lat ]);
      map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };
    if (mapElement) {
      fitMapToUser(map, userMarker);
    }

    const addMarkersToMap = (map, markers) => {
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(map);
      });
    };
    addMarkersToMap(map, markers);

    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
  }
};

export { initMapbox };
