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
  title: "Help keep the forests clean",
  category: 'Volunteer',
  description: 'Help keep the forests clean',
  positions: rand(3..10),
  address: "Vancouver, Canada",
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


