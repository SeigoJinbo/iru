require 'faker'
require "open-uri"

ADDRESSES = [
  # "Nishigotanda, Shinagawa City, Tokyo 141-0031",
  # "1-31-1, Shinagawa City, Tokyo 141-0031",
  # "3-6-6, Shinagawa City, Tokyo 141-0031",
  # "2-4-36 Meguro, Meguro City, Tokyo 153-0063",
  # "6-6-19, Shinagawa City, Tokyo 141-0031",
  # "2-11-2 Shinagawa City, Tokyo 141-0022",
  # "3-9-1, Shinagawa City, Tokyo 142-0062",
  # "4-6-6 Meguro, Meguro City, Tokyo 153-0063",
  # "2-14-1 Kamimeguro, Meguro City, Tokyo 153-0051",
  # "Sarugakucho, Shibuya City, Tokyo 150-0033",
  # "Kamimeguro, Tokyo 153-0051",
  # "5-21-9, Minato City, Tokyo 108-0071",
  # "3-39-5 Ebisu, Shibuya City, Tokyo 150-0013",
  # "4-3-1 Hiroo, Shibuya City, Tokyo 150-0012",
  # "Kamimeguro Elementary School, Meguro City, Tokyo 153-0051",
  # "2-8-17, Meguro City, Tokyo 153-0052",

  # "HIRAKUYA OSTERIA, Suzukake Street, Meguro, Tokyo, 152-0035, Japan",
  # "Kingdom Hall of Jehovah's Witnesses, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
  # "maker's base, Meguro ave., Meguro, Tokyo, 152-0001, Japan",
  # "FamilyMart, Ohara-dori, Tokyo, Shinagawa, 142-0042, Japan",
  # "Tokyo Gakugei University Setagaya Junior High School, Komahachi-dori, Setagaya, Tokyo, 158-0081, Japan",
  # "rise: town front, Tamazutsumi St., Setagaya, Tokyo, 158-0094, Japan", "
  # Takashimaya garden place, Tamagawa dori, Setagaya, Tokyo, 158-8502, Japan",
  # "Bird Sanctuary, Okura-dori, Funabashi 1-chome, Funabashi, Setagaya, Tokyo, 157-8510, Japan",
  # "Yogananajo-dori, 1-chome, Funabashi, Setagaya, Tokyo, 158-8577, Japan",
  # 'Times, Nakahara kaido, Tokyo, Ota, 145-8523, Japan', 'Tokyo, Ota, 145-0066, Japan',
  # 'Gap, Kurinoki-Dori, Meguro, Tokyo, 152-0035, Japan',
  # 'Tomorrowland, Maple Street, Meguro, Tokyo, 152-0035, Japan',
  # 'Sans Souci, Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
  'Den-en-Chofu Elementary School, Kampachi dori, Setagaya, Tokyo, 145-0071, Japan'
]

# # se of meruro
# '南保育園, Kannana dori, Meguro, Tokyo, 152-0013, Japan',
# '若竹幼稚園, Kannana dori, Meguro, Tokyo, 152-0013, Japan',
# '品川区立心身障害者福祉会館, Mitsuma-dori, Tokyo, Shinagawa, 142-0054, Japan',
# '荏原消防署旗の台出張所, 中原街道, Gotanda, Tokyo, Shinagawa, 142-0063, Japan',
# '日本聖公会三光教会, 22-24, 中原街道, Gotanda, Tokyo, Shinagawa, 142-0064, Japan',
# '丸山寺, 三間通り, Tokyo, Shinagawa, 142-0043, Japan',
# '伊藤児童センター, 立会道路, Tokyo, Shinagawa, 140-0015, Japan ',
# 'Yukigaya Hachiman Shrine, Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
# '昴児童公園, Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
# 'Ebara Hospital, 中原街道, Gotanda, Tokyo, Shinagawa, 145-0065, Japan',
# '田園調布消防署 久が原出張所, 呑川緑道, Tokyo, Ota, 146-0081, Japan',

# #nw of meguro
# 'Setagaya Park, 420, Sangenjaya, Setagaya, Tokyo, 154-0005, Japan',
# "Showa Women's University, Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0004, Japan",
# '千代の湯, Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0024, Japan'
# '世田谷区太子堂在宅介護支援センター, Awashima-dori, Taishido, Funabashi, Setagaya, Tokyo, 155-0032, Japan',
# '駒沢給水所, 426, 1-chome, Funabashi, Setagaya, Tokyo, 154-0014, Japan Water works'

ROLES = ['leader', 'member', 'member', 'member']
CATEGORIES = ["Volunteer", "Donation", "Fundraiser"]
TAGS = ["Animals/Wildlife", "Children/Youth", "Disasters", "Education", "Environment/Agriculture", "Health", "Women", "Seniors/Disabilities", "Other"]


EventComment.destroy_all
OrganizationComment.destroy_all
puts "destroying enrollments"
Enrollment.destroy_all
puts "destroying orders"
Order.destroy_all
puts "destroying events"
Event.destroy_all
puts "destroying memberships"
Membership.destroy_all
puts "destroying users"
User.destroy_all
puts "destroying organizations"
Organization.destroy_all





#------------------RANDOM USERS-----------------
# puts "creating random users"
# 5.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     nickname: Faker::FunnyName.name,
#     address: Faker::Address.full_address,
#     email: Faker::Internet.email,
#     password: "123456",
#     description: Faker::Hipster.paragraph,
#     gender: Faker::Gender.binary_type
#   )
# end

# puts "attaching users photos"
# User.all.each do |user|
#   user_avatar = URI.open('https://i.imgur.com/PxgXkTX.png')
#   user_banner = URI.open('https://i.imgur.com/nwaLuxT.jpg')
#   user.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
#   user.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
# end


#------------RANDOM ORGANIZATIONS----------------
# puts "creating random organizations"


# ADDRESSES.each do |address|
#   tag = TAGS.sample
#   org = Organization.create!(
#     email: Faker::Internet.email,
#     name: Faker::Dessert.topping,
#     address: address,
#     description: Faker::Hipster.paragraph,
#     establishment_year: rand(1960..2020).to_s,
#     phone_number: Faker::PhoneNumber.cell_phone_in_e164,
#     hp_url: Faker::Internet.email,
#     twitter_url: Faker::Internet.email,
#     insta_url: Faker::Internet.email,
#     tag_list: tag
#   )
#   org.tag_list.add(tag)
# end

# #-----------RANDOM MEMBERSHIPS--------------
# Organization.all.each do |organization|
#   Membership.create!(
#     organization: organization,
#     user: User.all.sample,
#     role: 'leader'
#   )
# end

# #-----------RANDOM ORG PHOTOS----------------
# puts "attaching org photos"
# Organization.all.each do |org|
#   org_logo = URI.open('https://i.imgur.com/LrBo4bK.png')
#   org_banner = URI.open('https://i.imgur.com/qqvHVOz.jpg')
#   org.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
#   org.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')
# end







# Organization.all.each do |organization|
#   2.times do
#     Event.create!(
#       title: Faker::Movie.title,
#       category: CATEGORIES.sample,
#       description: Faker::Hipster.paragraph,
#       positions: rand(3..10),
#       ongoing: true,
#       dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
#       start_time: Time.now + rand(10000..100000),
#       end_time: Time.now + rand(100000..1000000),
#       organization: organization,
#       owner: organization.users.first
#     )
#   end
#   Event.create!(
#     title: Faker::Movie.title,
#     category: CATEGORIES.sample,
#     description: Faker::Hipster.paragraph,
#     positions: rand(3..10),
#     ongoing: false,
#     start_time: Time.now + rand(10000..100000),
#     end_time: Time.now + rand(100000..1000000),
#     organization: organization,
#     owner: organization.users.first
#   )
# end

# puts "attaching event photo"
# Event.all.each do |event|
#   event_photo = URI.open('https://i.imgur.com/SaCQrAE.jpg')
#   event.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')
# end

# 60.times do
#   Enrollment.create!(
#     status: 'pending',
#     user: User.all.sample,
#     event: Event.all.sample,
#     start_time: Time.now + rand(10000..100000),
#     end_time: Time.now + rand(100000..1000000)
#   )
# end



#-----------------USERS--------------------
# require_relative './db/user_seeds'
# doug 'https://ca.slack-edge.com/T02NE0241-U4APKLFLM-da0b004a3774-512'
doug = User.create!(
  first_name: "Doug",
  last_name: "Doug",
  nickname: "Dugg",
  address: "meguro tokyo Japan",
  email: "dug@iru.com",
  password: "123456",
  description: "gives assistance and judgment",
  gender: "male",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U4APKLFLM-da0b004a3774-512')
doug.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
doug.save

# tomo 'https://ca.slack-edge.com/T02NE0241-U01BNV6UT5J-a4aaf5262922-512'
tomo = User.create!(
  first_name: "Tomo",
  last_name: "Tomo",
  nickname: "Tomo",
  address: "meguro tokyo Japan",
  email: "tomo@iru.com",
  password: "123456",
  description: "more animations",
  gender: "male",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BNV6UT5J-a4aaf5262922-512')
tomo.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
tomo.save

# taku 'https://ca.slack-edge.com/T02NE0241-U01BA1V6NT0-c1f678e8f104-512'
taku = User.create!(
  first_name: "Taku",
  last_name: "Taku",
  nickname: "Taku",
  address: "meguro tokyo Japan",
  email: "taku@iru.com",
  password: "123456",
  description: "...",
  gender: "male",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BA1V6NT0-c1f678e8f104-512')
taku.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
taku.save

# alex 'https://ca.slack-edge.com/T02NE0241-U01B28171C7-39328fb417e5-512'
alex = User.create!(
  first_name: "Alex",
  last_name: "Alex",
  nickname: "Tarako",
  address: "meguro tokyo Japan",
  email: "alex@iru.com",
  password: "123456",
  description: "my glasses are foggy...",
  gender: "male",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01B28171C7-39328fb417e5-512')
alex.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
alex.save

# aline 'https://ca.slack-edge.com/T02NE0241-U01BA61426A-96a4db6efb46-512'
aline = User.create!(
  first_name: "Aline",
  last_name: "Aline",
  nickname: "Aline",
  address: "meguro tokyo Japan",
  email: "aline@iru.com",
  password: "123456",
  description: " ",
  gender: "female",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BA61426A-96a4db6efb46-512')
aline.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
aline.save

# jess 'https://ca.slack-edge.com/T02NE0241-U01BGQF8EN6-38cf90e892b8-512'
jess = User.create!(
  first_name: "jess",
  last_name: "jess",
  nickname: "Jess",
  address: "meguro tokyo Japan",
  email: "jess@iru.com",
  password: "123456",
  description: " ",
  gender: "female",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGQF8EN6-38cf90e892b8-512')
jess.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
jess.save


# sho 'https://ca.slack-edge.com/T02NE0241-U01BGQ7MZ4J-e39557371271-512'
sho = User.create!(
  first_name: "sho",
  last_name: "sho",
  nickname: "sho",
  address: "meguro tokyo Japan",
  email: "sho@iru.com",
  password: "123456",
  description: "i think i broke everything...",
  gender: "male",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGQF8EN6-38cf90e892b8-512')
sho.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
sho.save


puts 'creating dev team'

seigo = User.create!(
  first_name: "Seigo",
  last_name: "Jinbo",
  nickname: "SeiGOGOGO",
  address: "meguro tokyo Japan",
  email: "seigo@iru.com",
  password: "123456",
  description: "BURN IT ALL DOWN. VIVA LA RESISTANCE!",
  gender: "male",
  admin: false
)
  #birthday: 'november 6 1987'
user_avatar = URI.open('https://www.aboutmanchester.co.uk/wp-content/uploads/2017/11/IMG_2409.jpg')
user_banner = URI.open('https://miro.medium.com/max/1400/1*nkARDRVDJaB9bKN0Po53-g.jpeg')
seigo.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
seigo.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
seigo.save

yuping = User.create!(
  first_name: "Yuping",
  email: "yuping@iru.com",
  password: "123456",
  address: "meguro tokyo Japan",
  nickname: "YupYupYup",
  description: "Do you guys want some eggrolls?",
  gender: "female",
  admin: false
  )
 # birthday: 'august 11 1992'
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BP13R1CL-aa72532c73d4-512')
user_banner = URI.open('https://images.pexels.com/photos/315998/pexels-photo-315998.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
yuping.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
yuping.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
yuping.save

liz = User.create!(
  first_name: "Liz",
  email: "liz@iru.com",
  password: "123456",
  address: "meguro tokyo Japan",
  nickname: "LizLizLiz",
  description: "I’m passionate about nature and animals. We need to care about our preserving the environment not only for ourselves but for future generations to come. Leading We Love Trees and Tsunami Relief.",
  gender: "female",
  admin: false
  )
  #birthday: 'may 7th 1993'
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGPC1Z0S-de16e0810ab9-512')
user_banner = URI.open('https://images.pexels.com/photos/1237119/pexels-photo-1237119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
liz.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
liz.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
liz.save




#-----------------SET ORGANIZATIONS------------------------
#require_relative './db/organization_seeds'
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



#------------------SET EVENTS--------------
# require_relative './db/event_seeds'
puts "creating plant a tree"
plant_a_tree = Event.create!(
  title: "Plant a tree",
  category: 'Volunteer',
  description: 'plant a tree',
  positions: rand(3..10),
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: we_love_trees,
  owner: liz,
  tag_list: "Environment/Agriculture"
  )
puts "attaching photo to plant a tree"
event_photo = URI.open('https://www.eco.ca/wp-content/uploads/corporation-of-tomorrow.png')
plant_a_tree.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "Read to kids"
read_to_kids = Event.create!(
  title: "Read to kids",
  category: 'Volunteer',
  description: 'help children learn to read',
  address: "Hachimangu shrine, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: animal,
  owner: yuping,
  tag_list: "Education"

  )
puts "attaching photo to Read to kids"
event_photo = URI.open('https://images.pexels.com/photos/5088188/pexels-photo-5088188.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
read_to_kids.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Give Money to Pandas"
walk_a_panda = Event.create!(
  title: "Give Money to Pandas",
  category: 'Fundraiser',
  description: 'Pandas need money',
  address: "Setagaya, Tokyo, 152-0035, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: animal,
  owner: yuping,
  price_cents: 100,
  tag_list: "Animals/Wildlife"
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
walk_a_panda.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Night cafe"
night_cafe = Event.create!(
  title: "Night Cafe",
  category: 'Volunteer',
  description: 'Tsubomi Cafe is a free cafe for teens.
Based on the refurbished bus, it is held regularly in Shibuya and Shinjuku.',
  address: "Shibuya: 6-21 Jingumae, Shibuya-ku, Tokyo 6-22-8 Jingumae",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: colabo,
  owner: liz,
  price_cents: 100,
  tag_list: "Women"
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('https://i2.wp.com/colabo-official.net/wp-content/uploads/2018/10/8574236942707.jpg?fit=640%2C401&ssl=1')
night_cafe.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Harvest kitchen"
kitchen = Event.create!(
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
  organization: harvest,
  owner: yuping,
  price_cents: 100,
  tag_list: "Other"
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('http://2hj.org/activity_/images/img_2hj_activity01.jpg')
night_cafe.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


#---------------SET ENROLLMENTS---------------
puts "creating enrollment"

Enrollment.create!(
  user: liz,
  event: read_to_kids,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: seigo,
  event: plant_a_tree,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: yuping,
  event: plant_a_tree,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )




puts 'Seeding Complete!'
