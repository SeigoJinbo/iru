require_relative './user_seeds'





puts "creating we love trees"
WE_LOVE_TREES = Organization.create!(
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
WE_LOVE_TREES.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
WE_LOVE_TREES.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')

puts "creating tsunami relief"
TSUNAMI = Organization.create!(
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
TSUNAMI.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
TSUNAMI.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')


puts "creating Animals are people"
ANIMAL = Organization.create!(
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
ANIMAL.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
ANIMAL.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



puts "colabo"
COLABO = Organization.create!(
  name: "Colabo",
  email: "sato@colabo.com",
  # address: "Setagaya, Tokyo, 152-0035, Japan",
  description: "We are working toward a society in which
all girls have a “clothing, food and housing” and “relationship”, and
girls with difficulties do not have to end up in exploitation or violence.
  Our free, women-only and survivor-led service offers a holistic response to women and girls who have experienced, or are at risk of, gendered violence. The aim of our work is to create a safe, non-judgmental and non-directive space in which women and girls can explore their experiences, and know that they will be listened to and believed. \n
  Our goal is to promote, preserve, and restore the mental health and wellbeing of women and girls, to empower them to make a total and sustainable recovery from the experiences of violence. Empowerment is a key concept. Our role is to guide and facilitate, offering a range of interventions on the healing journey to enable each woman to take control of her own recovery. \n
  Our aim is to achieve sustainable recovery that helps women move forward in their lives and thrive. This involves working with women to explore and express deep and powerful emotions in order to free them from the pain of their experiences.",
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
COLABO.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
COLABO.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')

puts "second harvest"
HARVEST = Organization.create!(
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
org_logo = URI.open('https://i.imgur.com/nr5yK9t.png')
org_banner = URI.open('https://eatnorth.com/sites/default/files/styles/span9_thumbnail/public/field/image/82799828_10156521106077063_7024970787056517120_n_-_edited.jpg?itok=uEP3lm1H')
HARVEST.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
HARVEST.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



puts "colabo"
JWCS = Organization.create!(
  name: "Japan Wildlife Conservation Society",
  email: "sato@jwcs.com",
  # address: "Setagaya, Tokyo, 152-0035, Japan",
  description: "The Japan Wildlife Conservation Society (JWCS) aims to create a society where humans and wildlife can coexist. The globalization of economics has had enormous effects on wildlife, for which many of Japan’s policies, business activities and consumer behavior are responsible. As a Japanese non-profit NGO, we aim to bring attention to problems and suggest appropriate solutions.

In our activities, our basic principles are:
1) to keep in mind that ecosystems provide the basis for the survival of humanity,
2) to avoid simplistic artificial solutions,
3) to require decision-making to be based on the precautionary principle.",
  establishment_year: "1990",
  phone_number: "422-54-4885",
  hp_url: "https://www.jwcs.org/",
  fb_url: "https://www.facebook.com/JapanWildlifeConservationSociety/",
  tag_list: "Animals/Wildlife"
  )

puts "attaching photos to JWcs"
org_logo = URI.open('https://www.jwcs.org/en/wp-content/uploads/sites/2/logo_en.png')
org_banner = URI.open('https://images.pexels.com/photos/689784/pexels-photo-689784.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
JWCS.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
JWCS.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')





#https://images.pexels.com/photos/961969/pexels-photo-961969.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260


#----------------SET MEMBERSHIPS--------------
# puts "assigning we love trees to liz"
# Membership.create!(user: LIZ, organization: WE_LOVE_TREES)

# puts "tsunami relief to liz"
# Membership.create!(user: LIZ, organization: TSUNAMI)

Membership.create!(user: LIZ, organization: JWCS, status: 'Active')
Membership.create!(user: SEIGO, organization: JWCS, status: 'Active')

Membership.create!(user: LIZ, organization: HARVEST, status: 'Active')


puts "assigning animals are people to yuping"
Membership.create!(user: YUPING, organization: ANIMAL, status: 'Active')
Membership.create!(user: YUPING, organization: COLABO, status: 'Active')
Membership.create!(user: YUPING, organization: HARVEST, status: 'Active')




Membership.create!(user: JESS, organization: UNHCR, status: 'Active')
Membership.create!(user: SHO, organization: BASIC, status: 'Active')
Membership.create!(user: ALINE, organization: WWLD, status: 'Active')
Membership.create!(user: TAKU, organization: UNICEF, status: 'Active')
Membership.create!(user: TOMO, organization: HANDS, status: 'Active')
Membership.create!(user: ALEX, organization: MORI, status: 'Active')

puts ' ______   _______  _______  ______    ___   _______  _______  _______  _______
|      | |       ||       ||    _ |  |   | |       ||   _   ||       ||       |
|  _    ||    ___||    _  ||   | ||  |   | |       ||  |_|  ||_     _||    ___|
| | |   ||   |___ |   |_| ||   |_||_ |   | |       ||       |  |   |  |   |___
| |_|   ||    ___||    ___||    __  ||   | |      _||       |  |   |  |    ___|
|       ||   |___ |   |    |   |  | ||   | |     |_ |   _   |  |   |  |   |___
|______| |_______||___|    |___|  |_||___| |_______||__| |__|  |___|  |_______|'
