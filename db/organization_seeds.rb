require_relative 'seeds'
puts "creating we love trees"
we_love_trees = Organization.create!(
  name: "We love trees",
  email: "trees@welovetrees.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "Save the trees.",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Environment/Agriculture"
  )
puts "attaching photos to we love trees"
org_logo = URI.open('https://images.pexels.com/photos/9198/nature-sky-twilight-grass-9198.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
org_banner = URI.open('https://images.pexels.com/photos/957024/forest-trees-perspective-bright-957024.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
we_love_trees.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
we_love_trees.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')

puts "creating tsunami relief"
tsunami = Organization.create!(
  name: "Tsunami Relief",
  email: "liz@tsunamirelief.com",
  address: "Hachimangu shrine, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
  description: "Help people from tsunamis.",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://tsunamirelief.com",
  twitter_url: "http://twitter.com/tsunami",
  insta_url: "http://instagram.com/tsunamirelief",
  tag_list: "Disasters"
  )
puts "attaching photos tsunami relief"
org_logo = URI.open('https://images.pexels.com/photos/1295138/pexels-photo-1295138.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
org_banner = URI.open('https://images.pexels.com/photos/753619/pexels-photo-753619.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
tsunami.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
tsunami.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')


puts "creating Animals are people"
animal = Organization.create!(
  name: "Animals Are People Too",
  email: "yuping@animals.com",
  address: "Setagaya, Tokyo, 152-0035, Japan",
  description: "No furries allowed",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://tsunamirelief.com",
  twitter_url: "http://twitter.com/animals",
  insta_url: "http://instagram.com/animalsarepeople",
  tag_list: "Animals/Wildlife"
  )
puts "attaching photos to Animals are people"
org_logo = URI.open('https://images.pexels.com/photos/2675714/pexels-photo-2675714.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
org_banner = URI.open('https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
animal.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
animal.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



puts "colabo"
colabo = Organization.create!(
  name: "Colabo",
  email: "sato@colabo.com",
  # address: "Setagaya, Tokyo, 152-0035, Japan",
  description: "We are working toward a society in which
all girls have a “clothing, food and housing” and “relationship”, and
girls with difficulties do not have to end up in exploitation or violence",
  establishment_year: "2019",
  phone_number: "08077633849",
  hp_url: "https://colabo-official.net/",
  twitter_url: "https://twitter.com/colabo_official",
  insta_url: 'https://www.instagram.com/colabo.official/',
  tag_list: "Women"
  )

puts "attaching photos to Animals are people"
org_logo = URI.open('https://colabo-official.net/wp-content/uploads/2017/08/colabologo.svg')
org_banner = URI.open('https://colabo-official.net/wp-content/uploads/2017/08/colabo-site_02.jpg?id=508')
colabo.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
colabo.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')

puts "second harvest"
harvest = Organization.create!(
  name: "Second Harvest",
  email: "John@secondharvest.com",
  # address: "Setagaya, Tokyo, 152-0035, Japan",
  description: "Food loss in Japan is virtually equivalent to the total amount of food aid distributed world-wide.
Statistics published by the Ministry of Agriculture, Forestry and Fisheries in 2012 puts Japan’s annual food loss at between 5 and 8 million tons. Japan’s annual rice production is 8.39 million tons, a very similar amount. Of that 5 to 8 million tons of food loss, 2 to 4 million tons come from individual households. Food loss during production and distribution is between 3 and 4 million tons.",
  establishment_year: "2004",
  phone_number: "08077633849",
  hp_url: "http://2hj.org/",
  twitter_url: "https://twitter.com/2ndharvestjapan",

  tag_list: "Other"
  )

puts "attaching photos to Animals are people"
org_logo = URI.open('http://2hj.org/common/images/logo.gif')
org_banner = URI.open('https://eatnorth.com/sites/default/files/styles/span9_thumbnail/public/field/image/82799828_10156521106077063_7024970787056517120_n_-_edited.jpg?itok=uEP3lm1H')
harvest.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
harvest.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')

#https://images.pexels.com/photos/961969/pexels-photo-961969.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260


#----------------SET MEMBERSHIPS--------------
puts "assigning we love trees to liz"
Membership.create!(user: liz, organization: we_love_trees)

puts "tsunami relief to liz"
Membership.create!(user: liz, organization: tsunami)

puts "assigning animals are people to yuping"
Membership.create!(user: yuping, organization: animal)
Membership.create!(user: liz, organization: colabo)

