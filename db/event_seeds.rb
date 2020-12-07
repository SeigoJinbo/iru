require_relative './user_seeds'
require_relative './organization_seeds'

puts "creating plant a tree"
PLANT_A_TREE = Event.create!(
  title: "Plant a tree",
  category: 'Volunteer',
  description: 'plant a tree',
  positions: rand(3..10),
  address: "3-9-1, Shinagawa City, Tokyo 142-0062",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: WE_LOVE_TREES,
  owner: LIZ,
  tag_list: "Environment/Agriculture",
  target: 5,
  raised: 2
  )
puts "attaching photo to plant a tree"
event_photo = URI.open('https://www.eco.ca/wp-content/uploads/corporation-of-tomorrow.png')
PLANT_A_TREE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Read to kids"
READ_TO_KIDS = Event.create!(
  title: "Read to kids",
  category: 'Volunteer',
  description: 'help children learn to read',
  address: "Hachimangu shrine, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: ANIMAL,
  owner: YUPING,
  tag_list: "Education",
  target: 3,
  raised: 1

  )
puts "attaching photo to Read to kids"
event_photo = URI.open('https://images.pexels.com/photos/5088188/pexels-photo-5088188.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
READ_TO_KIDS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Give Money to Pandas"
PAY_A_PANDA = Event.create!(
  title: "Give Money to Pandas",
  category: 'Fundraiser',
  description: 'Pandas need money',
  address: "Setagaya, Tokyo, 152-0035, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: ANIMAL,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Animals/Wildlife",
  target: 1000000,
  raised: 50
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
PAY_A_PANDA.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Tsubomi Cafe"

CAFE = Event.create!(
  title: "Tsubomi Cafe",
  category: 'Volunteer',
  description: 'Tsubomi Cafe is a bus that has been renovated into a free cafe and resource center for teenage girls. Tsubomi Cafe is open on alternate weeks in Shibuya and Shinjuku. Scheduled to be held in the future

* There is a possibility of cancellation or change.

Please check Twitter and Instagram for the latest information.',
  address: "Shibuya, Tokyo 6-22-8 Jingumae",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 7, 18, 00, 00),
  end_time: Time.new(2020, 11, 7, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 6,
  raised: 2
  )
puts "attaching photo cafe"
event_photo = URI.open('https://i2.wp.com/colabo-official.net/wp-content/uploads/2018/10/8574236942707-640x480.jpg')
CAFE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


CAFE = Event.create!(
  title: "Tsubomi Cafe",
  category: 'Volunteer',
  description: 'Tsubomi Cafe is a bus that has been renovated into a free cafe and resource center for teenage girls. Tsubomi Cafe is open on alternate weeks in Shibuya and Shinjuku. Scheduled to be held in the future

* There is a possibility of cancellation or change.

Please check Twitter and Instagram for the latest information.',
  address: "Shibuya, Tokyo 6-22-8 Jingumae",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 14, 18, 00, 00),
  end_time: Time.new(2020, 11, 14, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 6,
  raised: 2
  )
puts "attaching photo cafe"
event_photo = URI.open('https://i2.wp.com/colabo-official.net/wp-content/uploads/2018/10/8574236942707-640x480.jpg')
CAFE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



CAFE = Event.create!(
  title: "Tsubomi Cafe",
  category: 'Volunteer',
  description: 'Tsubomi Cafe is a bus that has been renovated into a free cafe and resource center for teenage girls. Tsubomi Cafe is open on alternate weeks in Shibuya and Shinjuku. Scheduled to be held in the future

* There is a possibility of cancellation or change.

Please check Twitter and Instagram for the latest information.',
  address: "Shibuya, Tokyo 6-22-8 Jingumae",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 21, 18, 00, 00),
  end_time: Time.new(2020, 11, 21, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 6,
  raised: 2
  )
puts "attaching photo cafe"
event_photo = URI.open('https://i2.wp.com/colabo-official.net/wp-content/uploads/2018/10/8574236942707-640x480.jpg')
CAFE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

CAFE = Event.create!(
  title: "Tsubomi Cafe",
  category: 'Volunteer',
  description: 'Tsubomi Cafe is a bus that has been renovated into a free cafe and resource center for teenage girls. Tsubomi Cafe is open on alternate weeks in Shibuya and Shinjuku. Scheduled to be held in the future

* There is a possibility of cancellation or change.

Please check Twitter and Instagram for the latest information.',
  address: "Shibuya, Tokyo 6-22-8 Jingumae",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 28, 18, 00, 00),
  end_time: Time.new(2020, 11, 28, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 6,
  raised: 2
  )
puts "attaching photo cafe"
event_photo = URI.open('https://i2.wp.com/colabo-official.net/wp-content/uploads/2018/10/8574236942707-640x480.jpg')
CAFE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


BLANKETS = Event.create!(
  title: "Collecting Blankets for girls in need",
  category: 'Donation',
  description: 'We provide temporary shelter for girls who are unwilling or unable to go home, especially victims of physical and sexual violence. Shelter services include providing a place to sleep at night, but the space is also available for girls to shower, do laundry, cook, study, etc.',
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 29, 18, 00, 00),
  end_time: Time.new(2020, 12, 31, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 20,
	raised: 14,
	item: "blankets"
  )
puts "attaching photo blankets"
event_photo = URI.open('https://i0.wp.com/colabo-official.net/wp-content/uploads/2017/12/af9f338ed319d27a376d3c1bd9111159.jpg?resize=560%2C420&ssl=1')
BLANKETS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



SHELTER = Event.create!(
  title: "Shelter Sponsor",
  category: 'Fundraiser',
  description: 'It costs us 30,000 JPY to run our shelter for one day. Please help us stay open 365 days a year. Donors who do not wish to remain anonymous will be thanked in our annual report.',
  address: "Shibuya, Tokyo",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 30, 18, 00, 00),
  end_time: Time.new(2020, 12, 5, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 30000,
  raised: 20500
  )
puts "attaching photo night patrol"
event_photo = URI.open('https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/44319787_2327095527304110_6699748068037754880_o.jpg?_nc_cat=110&ccb=2&_nc_sid=cdbe9c&_nc_ohc=gKDKoKIggLYAX97txch&_nc_ht=scontent-nrt1-1.xx&oh=fee1154e33b8742b74dc918ecde05af5&oe=5FE4BA9B')
SHELTER.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

PATROL = Event.create!(
  title: "Night Patrol",
  category: 'Volunteer',
  description: "I'm patrolling the city at night, talking to a girl who can't go home / can't go home.",
  address: "Kabukicho, Tokyo",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 12, 7, 18, 00, 00),
  end_time: Time.new(2020, 12, 7, 20, 00, 00),
  organization: COLABO,
  owner: TAKU,
  price_cents: 100,
  tag_list: "Women",
  target: 3,
  raised: 1
  )
puts "attaching photo night patrol"
event_photo = URI.open('https://i1.wp.com/colabo-official.net/wp-content/uploads/2017/12/IMGP5921.jpg?resize=560%2C315&ssl=1')
PATROL.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

MEAL = Event.create!(
  title: "Food drive",
  category: 'Donation',
  description: 'We cook together and value the time around the table. Not only does a girl who is not eating enough or a girl who continues to eat alone fill her stomach, but it is also a place to organize her situation and build relationships.',
  address: "Shinjuku Tokyo",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 12, 12, 18, 00, 00),
  end_time: Time.new(2020, 12, 25, 20, 00, 00),
  organization: COLABO,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Women",
  target: 20,
  raised: 15,
  item: "kg of rice"
  )
puts "attaching photo blankets"
event_photo = URI.open('https://i1.wp.com/colabo-official.net/wp-content/uploads/2017/12/ea867c4c3eb897fb20fa532ed32a101e-e1512808513995.jpg?resize=560%2C357&ssl=1')
MEAL.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


WHALES = Event.create!(
  title: "Help conserve the loris",
  category: 'Fundraiser',
  description: 'Despite the facts that the popular slow loris species are Appendix II listed and that since 2005 imports of primates for the pet trade have been prohibited because of zoonotic infections, many slow lorises are still smuggled into Japan. When the species were upgraded to Appendix I and gained the protection of conservation legislation, smuggling decreased. Nevertheless, there are continual cases involving abuse of registrations made before the upgrade.

In 2014, in co-operation with Louisa Musing of Oxford Brooks University, JWCS investigated the trade in slow lorises in Japan and produced the following paper:.
CROSSING INTERNATIONAL BORDERS: THE TRADE OF SLOW LORISES Nycticebus spp. AS PETS IN JAPAN  Louisa Musing, Kirie Suzuki, and K.A.I. Nekaris

When the “Act on Conservation of Endangered Species of Wild Fauna and Flora” was amended in 2017, articles were added requiring the implantation of microchip IDs at registration and making registrations for fixed periods. JWCS lobbied for strict enforcement of the legislation but was unable to exact any further changes.',
  address: "2-14-1 Kamimeguro, Meguro City, Tokyo 153-0051",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.new(2020, 11, 28, 18, 00, 00),
  end_time: Time.new(2020, 12, 31, 10, 00, 00),
  organization: JWCS,
  owner: LIZ,
  price_cents: 100,
  tag_list: "Animals/Wildlife",
  target: 1000000,
  raised: 780000
  )
puts "attaching photo blankets"
event_photo = URI.open('https://www.jwcs.org/en/wp-content/uploads/sites/2/Web2017-1.jpg')
WHALES.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Harvest kitchen"
KITCHEN = Event.create!(
  title: "Harvest Kitchen",
  category: 'Volunteer',
  description: 'We distribute hot meals at Ueno Park each Saturday.',
  address: "1F Mizuta Bldg. 4-5-1 Asakusabashi
Taito-ku, Tokyo, Japan 111-0053",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: HARVEST,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Other",
  target: 4,
  raised: 1
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('http://2hj.org/activity_/images/img_2hj_activity01.jpg')
KITCHEN.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Give Blankets to Pandas"
BLANKET_A_PANDA = Event.create!(
  title: "Give Blankets to Pandas",
  category: 'Donation',
  description: 'Pandas need blankets',
  address: "Sans Souci, Nakahara kaido, Tokyo, Ota, 145-8523, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: ANIMAL,
  owner: YUPING,
  tag_list: "Animals/Wildlife",
  donation_tag_list: "Supplies",
  item: "Blankets",
  target: 10,
  raised: 2
  )
puts "attaching photo give blankets to pandas"
event_photo = URI.open('https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
BLANKET_A_PANDA.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating garbage"
GARBAGE = Event.create!(
  title: "Keep the forests clean",
  category: 'Volunteer',
  description: "For more than 100 years, UNHCR has brought people and communities
together to answer the call of conservation. Through campground hosting, trail
maintenance, visitor services, research and more, volunteers make significant
contributions to the legacy of conservation for future generations. ",
  positions: rand(3..10),
  address: "Canada",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: UNHCR,
  owner: SEIGO,
  item: 'apples',
  tag_list: "Environment/Agriculture",
  target: 20,
  raised: 5
  )

event_photo = URI.open('https://pcdn.piiojs.com/i/oaa0g2/vw,840,vh,0,r,1,pr,2,o,avwp/https%3A%2F%2Fwww.socialtables.com%2Fwp-content%2Fuploads%2F2016%2F10%2FiStock-540095978-1024x683.jpg')
GARBAGE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "creating relief"
RELIEF = Event.create!(
  title: "Tsunami Relief",
  category: 'Volunteer',
  description: "Six American students from Ohio University (OHIO) studying in Japan alongside several Japanese students from  four universities (Chubu University, Musashi University, Toyo Gakuen University, Iwate Prefectural University, and four OHIO alumni gathered in Iwate prefecture for a collaborative volunteer experience to provide humanitarian aid and support to those affected by the March 2011 earthquake and tsunami from September 26-29, 2013. Over the course of the weekend, this group took part in two types of volunteer tsunami relief activities – the Nanohana Project in Otsuchi, and the “Mizubora” (Water Volunteerism) Project in Rikuzentakata.
  \nThe Nanohana Project seeds rice paddies in Otsuchi that were washed-out and became too salty to grow rice, by the tsunami that followed the Great East Japan Earthquake. Nanohana (Canola) not only helps to desalinate the soil, but can be processed into biodiesel. Kanayama Bunzo, a former truck driver coordinating this project, has two “yume” (dreams): 1) To be able to make rice paddies usable again, and 2) to run Otsuchi school buses on biodiesel in the future.
  \nFor the “Mizubora” project, the American and Japanese participants joined ten students from Ofunato High School and 65 international college and graduate students in delivering over 800 boxes of water to neighborhoods on the coast of the Hirota Peninsula of Rikuzentakata. Two-and-a-half years after the Great East Japan Earthquake, the purpose of delivering water, was not the water itself, but in maintaining the human relationships that have been built over the past two-and-a-half years between IPU, which has been, delivering water at least once a month since the day of the Great East Japan Earthquake in 2011.
  \nThrough this program, the groups of students from Ohio University were able to experience a unique form of international volunteerism. Not only did they learn about the current situation in the Tohoku region, but they also were exposed to creative processes the locals had come up with to reverse the damage the Great East Japan Earthquake had caused. This grant allowed the Ohio students to continue a program that had emerged immediately after the earthquake, as this was the third year of this volunteer project program. ",
  positions: rand(3..10),
  address: "Fukushima, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Disasters",
  target: 20,
  raised: 12
  )
event_photo = URI.open('http://usjapantomodachi.org/wp/wp-content/uploads/2013/10/banner2.jpg')
RELIEF.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "creating earthquake"
EARTHQUAKE = Event.create!(
  title: "Dispatching Volunteers to Disaster-Affected Regions",
  category: 'Volunteer',
  description: "We dispatch volunteers to assist with the reconstruction of disaster-affected regions. We not only remove debris and rubble but also hold talks with local administrations, businesses and reconstruction assistance NPOs for ongoing support and creating new business that leads to reconstruction.These activities include the dispatch of volunteers for assisting with the reconstruction from the Great East Japan Earthquake as well as the Kumamoto Earthquake.",
  positions: rand(3..10),
  address: "Nerima, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Disasters",
  target: 20,
  raised: 12
  )
event_photo = URI.open('https://recruit-holdings.com/sustainability/community/img/volunteer_01.JPG')
EARTHQUAKE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating earthquake"
EARTHQUAKE2 = Event.create!(
  title: "Dispatching Volunteers to Disaster-Affected Regions",
  category: 'Fundraiser',
  description: "We dispatch volunteers to assist with the reconstruction of disaster-affected regions. We not only remove debris and rubble but also hold talks with local administrations, businesses and reconstruction assistance NPOs for ongoing support and creating new business that leads to reconstruction.These activities include the dispatch of volunteers for assisting with the reconstruction from the Great East Japan Earthquake as well as the Kumamoto Earthquake.",
  positions: rand(3..10),
  address: "Narita, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Disasters",
  target: 200000,
  raised: 175936
  )
event_photo = URI.open('https://recruit-holdings.com/sustainability/community/img/volunteer_01.JPG')
EARTHQUAKE2.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating biodiversity"
BIODIVERSITY = Event.create!(
  title: "Forests and biodiversity",
  category: 'Fundraiser',
  description: "
  \nHalf of the world’s forests have disappeared. Privatisation, trade liberalisation and increased exports of meat and crops, such as soy and palm oil, have led to a massive increase in large-scale plantations, triggering further deforestation.  Yet forests provide livelihoods for many local communities and indigenous peoples. They help to regulate our climate, and are home to some of the most species-diverse habitats on earth.
  \nFoEI works with local communities and indigenous peoples to conserve forests, and strengthen communities’ rights and community management of forests. We campaign against industrial large scale plantations, monoculture, destructive logging and the commodification and financialization of forests and biodiversity.
  \nWe urgently need to protect the forests in our fight for a sustainable future for everybody.",
  positions: rand(3..10),
  address: "Chofu, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Environment/Agriculture",
  target: 500000,
  raised: 345935
  )
event_photo = URI.open('https://www.foei.org/wp-content/uploads/2013/11/RS1775_2nd-1067-biolost-David-Gilbert-scr.jpg')
BIODIVERSITY.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating Disabled"
DISABLED = Event.create!(
  title: "Support for Persons with Disabilities",
  category: 'Fundraiser',
  description: "The Nippon Foundation, established in 1962, has been involved in activities to support persons with disabilities in Japan and around the world for more than 50 years. In the course of working together with persons with disabilities, we have learned that removing the obstacles that prevent their equal participation paves the way for everyone – with or without a disability – to demonstrate their full potential. Persons with disabilities have often been stereotyped as people who “need to be protected by society,” but that image needs to be swept aside through a paradigm shift toward viewing them as “contributors to society.” It is important that we continue to lend a helping hand to people facing severe difficulties and also to carry on the support activities that aim to provide equal opportunities. But, at the same time, The Nippon Foundation wants to contribute to that paradigm shift by offering innovative support that seeks to allow highly talented persons with disabilities to better display their abilities and thereby lead the way in encouraging and inspiring others in society.",
  positions: rand(3..10),
  address: "Adachi, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Seniors/Disabilities",
  target: 100000,
  raised: 83957
  )
event_photo = URI.open('https://www.nippon-foundation.or.jp/app/uploads/2018/11/pickup-02.jpg')
DISABLED.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating Disabled"
DISABLED2 = Event.create!(
  title: "Support for Persons with Disabilities",
  category: 'Fundraiser',
  description: "The Nippon Foundation, established in 1962, has been involved in activities to support persons with disabilities in Japan and around the world for more than 50 years. In the course of working together with persons with disabilities, we have learned that removing the obstacles that prevent their equal participation paves the way for everyone – with or without a disability – to demonstrate their full potential. Persons with disabilities have often been stereotyped as people who “need to be protected by society,” but that image needs to be swept aside through a paradigm shift toward viewing them as “contributors to society.” It is important that we continue to lend a helping hand to people facing severe difficulties and also to carry on the support activities that aim to provide equal opportunities. But, at the same time, The Nippon Foundation wants to contribute to that paradigm shift by offering innovative support that seeks to allow highly talented persons with disabilities to better display their abilities and thereby lead the way in encouraging and inspiring others in society.",
  positions: rand(3..10),
  address: "Mooka, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Seniors/Disabilities",
  target: 80000,
  raised: 43957
  )
event_photo = URI.open('https://www.nippon-foundation.or.jp/app/uploads/2018/11/pickup-02.jpg')
DISABLED2.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating blood"
BLOOD = Event.create!(
  title: "Blood Program",
  category: 'Donation',
  description: "Thanks to the generous donations, the Japanese Red Cross Society is able to deliver blood products to medical institutions across the country.
  \nBlood transfusion plays an important life-saving function in the treatment of malignant neoplasms (cancer), hematological diseases and other disorders. Blood cannot, as of yet, be manufactured through artificial processes. Blood collected by way of voluntary, non-remunerated donations from healthy individuals saves the lives of countless patients on a daily basis.
  \nTo those who are considering donating blood within Japan:
  Thank you very much for your support and kind consideration.
  Under the blood donation policy and for safety reasons regarding the person donating blood, we are required to ask you to fill out a mandatory pre-questionnaire in Japanese, and have a certified physician conduct a preliminary medical examination for blood donation in Japanese. Both of these steps will take place on site at any of our blood donation facilities. For this reason, we cannot accept donations from individuals who are unable to understand and respond in Japanese. Thank you very much for your understanding and cooperation.",
  positions: rand(3..10),
  address: "Kamagaya, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Health",
  target: 1000,
  raised: 439
  )
event_photo = URI.open('http://www.jrc.or.jp/english/img/1669_s_2_VcContents_E-0_VcContentsImage_E001.jpg')
BLOOD.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating blood2"
BLOOD2 = Event.create!(
  title: "Donate your blood",
  category: 'Donation',
  description: "Thanks to the generous donations, the Japanese Red Cross Society is able to deliver blood products to medical institutions across the country.
  \nBlood transfusion plays an important life-saving function in the treatment of malignant neoplasms (cancer), hematological diseases and other disorders. Blood cannot, as of yet, be manufactured through artificial processes. Blood collected by way of voluntary, non-remunerated donations from healthy individuals saves the lives of countless patients on a daily basis.
  \nTo those who are considering donating blood within Japan:
  Thank you very much for your support and kind consideration.
  Under the blood donation policy and for safety reasons regarding the person donating blood, we are required to ask you to fill out a mandatory pre-questionnaire in Japanese, and have a certified physician conduct a preliminary medical examination for blood donation in Japanese. Both of these steps will take place on site at any of our blood donation facilities. For this reason, we cannot accept donations from individuals who are unable to understand and respond in Japanese. Thank you very much for your understanding and cooperation.",
  positions: rand(3..10),
  address: "Machida, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Health",
  target: 1000,
  raised: 589
  )
event_photo = URI.open('http://www.jrc.or.jp/english/assets_c/2014/09/Blood%20Programme_%E8%A3%BD%E5%93%81%E5%8C%96%E3%81%B8%E6%9C%80%E7%B5%82%E3%83%81%E3%82%A7%E3%83%83%E3%82%AF-cropped-proto-custom_274.jpg')
BLOOD2.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating blood3"
BLOOD3 = Event.create!(
  title: "Give us blood",
  category: 'Donation',
  description: "Thanks to the generous donations, the Japanese Red Cross Society is able to deliver blood products to medical institutions across the country.
  \nBlood transfusion plays an important life-saving function in the treatment of malignant neoplasms (cancer), hematological diseases and other disorders. Blood cannot, as of yet, be manufactured through artificial processes. Blood collected by way of voluntary, non-remunerated donations from healthy individuals saves the lives of countless patients on a daily basis.
  \nTo those who are considering donating blood within Japan:
  Thank you very much for your support and kind consideration.
  Under the blood donation policy and for safety reasons regarding the person donating blood, we are required to ask you to fill out a mandatory pre-questionnaire in Japanese, and have a certified physician conduct a preliminary medical examination for blood donation in Japanese. Both of these steps will take place on site at any of our blood donation facilities. For this reason, we cannot accept donations from individuals who are unable to understand and respond in Japanese. Thank you very much for your understanding and cooperation.",
  positions: rand(3..10),
  address: "Ichihara, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Health",
  target: 1000,
  raised: 754
  )
event_photo = URI.open('http://www.jrc.or.jp/english/assets_c/2014/09/Blood%20Programme_%E8%A3%BD%E5%93%81%E5%8C%96%E3%81%B8%E6%9C%80%E7%B5%82%E3%83%81%E3%82%A7%E3%83%83%E3%82%AF-cropped-proto-custom_274.jpg')
BLOOD3.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating blood4"
BLOOD4 = Event.create!(
  title: "Blood Drive",
  category: 'Donation',
  description: "Thanks to the generous donations, the Japanese Red Cross Society is able to deliver blood products to medical institutions across the country.
  \nBlood transfusion plays an important life-saving function in the treatment of malignant neoplasms (cancer), hematological diseases and other disorders. Blood cannot, as of yet, be manufactured through artificial processes. Blood collected by way of voluntary, non-remunerated donations from healthy individuals saves the lives of countless patients on a daily basis.
  \nTo those who are considering donating blood within Japan:
  Thank you very much for your support and kind consideration.
  Under the blood donation policy and for safety reasons regarding the person donating blood, we are required to ask you to fill out a mandatory pre-questionnaire in Japanese, and have a certified physician conduct a preliminary medical examination for blood donation in Japanese. Both of these steps will take place on site at any of our blood donation facilities. For this reason, we cannot accept donations from individuals who are unable to understand and respond in Japanese. Thank you very much for your understanding and cooperation.",
  positions: rand(3..10),
  address: "Nagoya, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Health",
  target: 1000,
  raised: 754
  )
event_photo = URI.open('http://www.jrc.or.jp/english/assets_c/2014/09/Blood%20Programme_%E8%A3%BD%E5%93%81%E5%8C%96%E3%81%B8%E6%9C%80%E7%B5%82%E3%83%81%E3%82%A7%E3%83%83%E3%82%AF-cropped-proto-custom_274.jpg')
BLOOD4.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')




puts "creating help kids"
KIDS = Event.create!(
  title: "Save the Children!",
  category: 'Fundraiser',
  description: "We are solving social issues interfering happiness of parents and children.

    \nOur Vision
    \nSociety fulfilled with smiles of diverse families, where all children are embraced, and parents are challenging anything with child-rearing.

    \nOur Mission
    \nSolving social issues interfering happiness of parents and children.

    \nOur purpose＆Activities
    \n◼Provide hospitable nursing care for children with special needs.
    \n◼Prevent abused and neglect death of newborn babies.
    \n◼Offer alternative solution to all the parents when their children get sick, and be a good hand for both parents and children.
    \n◼Zero waiting children for nursery school.All the mothers can continue their work.
    Our Solutions
    \n■Home-based daycare for sick children
    \nProvide parents (mothers in particular) with a backstop in case of simultaneous work/family emergencies, helping them in their strive for work-life balance.

    \n■Small size daycare service
    \nAssist parents (mothers in particular) to remain in the workforce through provision of uniquely small (maximum 19 places) daycare converted from residential apartments.

    \n■Daycare for disabled children
    \nSupport disabled children and their families, who had been excluded from regular daycare service, to have an access to childcare and opportunities to pursue individual goals, through provision of daycare service.",
  positions: rand(3..10),
  address: "Kodaira, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Children/Youth",
  target: 100000,
  raised: 58979
  )
event_photo = URI.open('https://florence.or.jp/english/img/top_imgizo_lp3.jpg')
KIDS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating help kids2"
KIDS2 = Event.create!(
  title: "Protect our Youth",
  category: 'Fundraiser',
  description: "We are solving social issues interfering happiness of parents and children.

    \nOur Vision
    \nSociety fulfilled with smiles of diverse families, where all children are embraced, and parents are challenging anything with child-rearing.

    \nOur Mission
    \nSolving social issues interfering happiness of parents and children.

    \nOur purpose＆Activities
    \n◼Provide hospitable nursing care for children with special needs.
    \n◼Prevent abused and neglect death of newborn babies.
    \n◼Offer alternative solution to all the parents when their children get sick, and be a good hand for both parents and children.
    \n◼Zero waiting children for nursery school.All the mothers can continue their work.
    Our Solutions
    \n■Home-based daycare for sick children
    \nProvide parents (mothers in particular) with a backstop in case of simultaneous work/family emergencies, helping them in their strive for work-life balance.

    \n■Small size daycare service
    \nAssist parents (mothers in particular) to remain in the workforce through provision of uniquely small (maximum 19 places) daycare converted from residential apartments.

    \n■Daycare for disabled children
    \nSupport disabled children and their families, who had been excluded from regular daycare service, to have an access to childcare and opportunities to pursue individual goals, through provision of daycare service.",
  positions: rand(3..10),
  address: "Chiba, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Children/Youth",
  target: 100000,
  raised: 58979
  )
event_photo = URI.open('https://florence.or.jp/english/img/top_imgizo_lp3.jpg')
KIDS2.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "creating help kids2"
KIDS3 = Event.create!(
  title: "Protect our Youth",
  category: 'Fundraiser',
  description: "We are solving social issues interfering happiness of parents and children.

    \nOur Vision
    \nSociety fulfilled with smiles of diverse families, where all children are embraced, and parents are challenging anything with child-rearing.

    \nOur Mission
    \nSolving social issues interfering happiness of parents and children.

    \nOur purpose＆Activities
    \n◼Provide hospitable nursing care for children with special needs.
    \n◼Prevent abused and neglect death of newborn babies.
    \n◼Offer alternative solution to all the parents when their children get sick, and be a good hand for both parents and children.
    \n◼Zero waiting children for nursery school.All the mothers can continue their work.
    Our Solutions
    \n■Home-based daycare for sick children
    \nProvide parents (mothers in particular) with a backstop in case of simultaneous work/family emergencies, helping them in their strive for work-life balance.

    \n■Small size daycare service
    \nAssist parents (mothers in particular) to remain in the workforce through provision of uniquely small (maximum 19 places) daycare converted from residential apartments.

    \n■Daycare for disabled children
    \nSupport disabled children and their families, who had been excluded from regular daycare service, to have an access to childcare and opportunities to pursue individual goals, through provision of daycare service.",
  positions: rand(3..10),
  address: "Ota, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'pints of blood',
  tag_list: "Children/Youth",
  target: 100000,
  raised: 58979
  )
event_photo = URI.open('https://florence.or.jp/english/img/top_imgizo_lp3.jpg')
KIDS3.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating dolphin"
DOLPHIN = Event.create!(
  title: "Stop dolphin hunting",
  category: 'Fundraiser',
  description: "REQUEST TO ITO FISHERY COOPERATIVE: EVEN FOR LIVE CAPTURES, THE SEA BECOMES BLOODY AND THE DOLPHINS DIE!
  \nImmediate halt to dolphin drive hunting in Futo for the purpose of selling live bodies to aquariums! In October 2019 Ito Fishery Cooperative in Futo area of Ito-city Shizuoka prefecture resumed dolphin drive hunting, which had not been performed for the past 15 years. If it’s a live capture, it’s not cruel. Based on such understanding, Ito Fishery Cooperative announced to the media the reopening of the hunt. However, the truth is very different. “Ocean-Dolphin-Human” released a video of live capture of bottlenose dolphins by dolphin drive hunting in Futo.",
  positions: rand(3..10),
  address: "Urayasu, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Animals/Wildlife",
  target: 500000,
  raised: 374593
  )
event_photo = URI.open('https://i2.wp.com/arcj.org/wp-content/uploads/2020/01/1-3.jpg?resize=640%2C450&ssl=1')
DOLPHIN.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating chicken"
CHICKEN = Event.create!(
  title: "No more animal cruelty!",
  category: 'Fundraiser',
  description: "Japan’s leading egg producer Akita Foods is alleged to have bribed the Agriculture Minister so that the OIE (World Organization for Animal Health) standard for animal welfare allows for battery cages. Subsequently, Japan submitted an opinion to OIE that chickens do not need dust-bathing litter, nesting area, or perches, and that animal welfare can be achieved even with battery cages. As a result, OIE’s original proposal, which required litter, perches, and nest boxes, changed such that these installations are only “desirable” (moreover Japan is requesting that even “desirable” be omitted).",
  positions: rand(3..10),
  address: "Ageo, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Animals/Wildlife",
  target: 300000,
  raised: 123552
  )
event_photo = URI.open('https://i1.wp.com/arcj.org/wp-content/uploads/2020/12/DSCN7856.jpg?resize=640%2C450&ssl=1')
CHICKEN.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "creating chicken2"
CHICKEN2 = Event.create!(
  title: "Better treatment of livestock",
  category: 'Fundraiser',
  description: "Japan’s leading egg producer Akita Foods is alleged to have bribed the Agriculture Minister so that the OIE (World Organization for Animal Health) standard for animal welfare allows for battery cages. Subsequently, Japan submitted an opinion to OIE that chickens do not need dust-bathing litter, nesting area, or perches, and that animal welfare can be achieved even with battery cages. As a result, OIE’s original proposal, which required litter, perches, and nest boxes, changed such that these installations are only “desirable” (moreover Japan is requesting that even “desirable” be omitted).",
  positions: rand(3..10),
  address: "Nagano, Japan",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..2)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 2, 20, 00, 00),
  organization: MORI,
  owner: DOUG,
  item: 'apples',
  tag_list: "Animals/Wildlife",
  target: 300000,
  raised: 123552
  )
event_photo = URI.open('https://i1.wp.com/arcj.org/wp-content/uploads/2020/12/DSCN7856.jpg?resize=640%2C450&ssl=1')
CHICKEN2.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



#---------------SET ENROLLMENTS---------------
puts "creating enrollment"

Enrollment.create!(
  user: DOUG,
  event: GARBAGE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: TOMO,
  event: GARBAGE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: ALEX,
  event: GARBAGE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: SHO,
  event: GARBAGE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: TAKU,
  event: GARBAGE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )


Enrollment.create!(
  user: LIZ,
  event: READ_TO_KIDS,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: SEIGO,
  event: PLANT_A_TREE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: YUPING,
  event: PLANT_A_TREE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: JESS,
  event: CAFE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  status: "Approved"
  )

Enrollment.create!(
  user: ALINE,
  event: CAFE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  status: "Approved"
  )

puts "creating donations"

Donation.create!(
  user: LIZ,
  event: BLANKET_A_PANDA,
  amount: rand(1..3)
  )

#---------------CREATE COMMENTS---------------

EventComment.create!(
  user: JESS,
  event: CAFE,
  content: "last week's event was a lot of fun!"
  )
EventComment.create!(
  user: ALINE,
  event: CAFE,
  content: "what should i bring?"
  )
EventComment.create!(
  user: YUPING,
  event: CAFE,
  content: "you don't have to bring anything!"
  )


