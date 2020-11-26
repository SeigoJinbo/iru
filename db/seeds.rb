require 'faker'
require "open-uri"

ADDRESSES = [
  "Nishigotanda, Shinagawa City, Tokyo 141-0031",
  "1-31-1, Shinagawa City, Tokyo 141-0031",
  "3-6-6, Shinagawa City, Tokyo 141-0031",
  "2-4-36 Meguro, Meguro City, Tokyo 153-0063",
  "6-6-19, Shinagawa City, Tokyo 141-0031",
  "2-11-2 Shinagawa City, Tokyo 141-0022",
  "4-6-6 Meguro, Meguro City, Tokyo 153-0063",
  "Sarugakucho, Shibuya City, Tokyo 150-0033",
  "Kamimeguro, Tokyo 153-0051",
  "5-21-9, Minato City, Tokyo 108-0071",
  "3-39-5 Ebisu, Shibuya City, Tokyo 150-0013",
  "4-3-1 Hiroo, Shibuya City, Tokyo 150-0012",
  "Kamimeguro Elementary School, Meguro City, Tokyo 153-0051",
  "2-8-17, Meguro City, Tokyo 153-0052",

  "HIRAKUYA OSTERIA, Suzukake Street, Meguro, Tokyo, 152-0035, Japan",
  "Kingdom Hall of Jehovah's Witnesses, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
  "maker's base, Meguro ave., Meguro, Tokyo, 152-0001, Japan",
  "FamilyMart, Ohara-dori, Tokyo, Shinagawa, 142-0042, Japan",
  "Tokyo Gakugei University Setagaya Junior High School, Komahachi-dori, Setagaya, Tokyo, 158-0081, Japan",
  "rise: town front, Tamazutsumi St., Setagaya, Tokyo, 158-0094, Japan", "
  Takashimaya garden place, Tamagawa dori, Setagaya, Tokyo, 158-8502, Japan",
  "Bird Sanctuary, Okura-dori, Funabashi 1-chome, Funabashi, Setagaya, Tokyo, 157-8510, Japan",
  "Yogananajo-dori, 1-chome, Funabashi, Setagaya, Tokyo, 158-8577, Japan",
  'Times, Nakahara kaido, Tokyo, Ota, 145-8523, Japan', 'Tokyo, Ota, 145-0066, Japan',
  'Gap, Kurinoki-Dori, Meguro, Tokyo, 152-0035, Japan',
  'Tomorrowland, Maple Street, Meguro, Tokyo, 152-0035, Japan',
  'Den-en-Chofu Elementary School, Kampachi dori, Setagaya, Tokyo, 145-0071, Japan',
  'Kannana dori, Meguro, Tokyo, 152-0013, Japan',

  'Mitsuma-dori, Tokyo, Shinagawa, 142-0054, Japan',
  'Gotanda, Tokyo, Shinagawa, 142-0063, Japan',

  '¥Shinagawa, 142-0043, Japan',
  'Tokyo, Shinagawa, 140-0015, Japan ',
  'Yukigaya Hachiman Shrine, Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
  'Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
  'Ebara Hospital, Gotanda, Tokyo, Shinagawa, 145-0065, Japan',
  'Tokyo, Ota, 146-0081, Japan',
  'Setagaya Park, 420, Sangenjaya, Setagaya, Tokyo, 154-0005, Japan',
  "Showa Women's University, Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0004, Japan",
  'Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0024, Japan',
  'Awashima-dori, Taishido, Funabashi, Setagaya, Tokyo, 155-0032, Japan',
  '426, 1-chome, Funabashi, Setagaya, Tokyo, 154-0014, Japan Water works'
]



ROLES = ['leader', 'member', 'member', 'member']
CATEGORIES = ["Volunteer", "Donation", "Fundraiser"]
TAGS = ["Animals/Wildlife", "Children/Youth", "Disasters", "Education", "Environment/Agriculture", "Health", "Women", "Seniors/Disabilities", "Other"]

puts "destroying all comments"
EventComment.destroy_all
OrganizationComment.destroy_all
puts "destroying all donations"
Donation.destroy_all
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

user = User.create!(email: 'user@user.com', password: '123456')
DOUG = User.create!(
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
DOUG.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
DOUG.save

MEBYO = Organization.create!(
  name: "ME-BYO Japan",
  email: "sato@mebyo.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "...",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to mebyo"
org_logo = URI.open('https://www.ics-expo.jp/images/common/logo_me-byo2020.jpg')
MEBYO.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

UNHCR = Organization.create!(
  name: "UNHCR",
  email: "sato@unhcr.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "....",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to IJRA"
org_logo = URI.open('https://upload.wikimedia.org/wikipedia/commons/f/f0/Kokurenunhcrkyoukai.logo.jpg')
UNHCR.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

BASIC = Organization.create!(
  name: "Basic Ph",
  email: "sato@basicph.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "....",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to Basic Ph"
org_logo = URI.open('https://i.pinimg.com/564x/e4/6f/7a/e46f7abd46d41f4f122920e453a5756a.jpg')
BASIC.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')



WWLD = Organization.create!(
  name: "World Wildlife Day ",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "....",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to WWLD"
org_logo = URI.open('https://image.shutterstock.com/image-vector/world-wildlife-day-march-3-260nw-573200827.jpg')
WWLD.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

UNICEF = Organization.create!(
  name: "Unicef",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "....",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to WWLD"
org_logo = URI.open('https://d.wildapricot.net/images/default-album/unicef.png')
UNICEF.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

HANDS = Organization.create!(
  name: "Helping Hands",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "....",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to WWLD"
org_logo = URI.open('https://venngage-wordpress.s3.amazonaws.com/uploads/2019/04/nonprofit-logo.png')
HANDS.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')



MORI = Organization.create!(
  name: "Mirai no Mori",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "....",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to WWLD"
org_logo = URI.open('https://scontent-nrt1-1.xx.fbcdn.net/v/t31.0-0/cp0/e15/q65/p320x320/468508_472465212841537_1329765003_o.jpg?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=ARlhtRjjai8AX8L2csN&_nc_ht=scontent-nrt1-1.xx&tp=3&oh=3097b736dab1e40e7858b984ae47b04b&oe=5FE2A19D')
MORI.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')







puts "creating polar bears"
POLAR_BEARS = Event.create!(
  title: "Save the polar bears",
  category: 'Fundraiser',
  description: 'save the polar bears',
  positions: rand(3..10),
  address: "Alaska, United States",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
 end_time: Time.new(2020, 12, 20, 20, 00, 00),
  organization: WWLD,
  owner: DOUG,
  tag_list: "Animals/Wildlife",
  target: 1250000,
  raised: 914503
  )

event_photo = URI.open('https://media.pri.org/s3fs-public/styles/story_main/public/migration/PriMigrationsVivvoFilesImagesMigration/pri.org/files/640px_Polar_Bear_ANWR_1_400523505.jpeg?itok=yFqRPxTs')
POLAR_BEARS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "creating children"
CHILDREN = Event.create!(
  title: "Ream World Donations",
  category: 'Donation',
  description: 'Donate books to kids',
  positions: rand(3..10),
  address: "Nairobi, Kenya",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 12, 20, 00, 00),
  organization: UNHCR,
  owner: DOUG,
  item: 'books',
  tag_list: "Children",
  target: 1000,
  raised: 893
  )

event_photo = URI.open('http://www.hiv-aids-kids.org/image/CSC29S.jpg')
CHILDREN.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating foodbank"
FOOD = Event.create!(
  title: "Foodbank fundraiser",
  category: 'Fundraiser',
  description: 'Help raise money for food',
  positions: rand(3..10),
  address: "Sydney, Australia",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 10, 20, 00, 00),
  organization: UNICEF,
  owner: DOUG,
  item: 'apples',
  tag_list: "Other",
  target: 200000,
  raised: 148792
  )

event_photo = URI.open('https://i0.wp.com/centraldigest.com/wp-content/uploads/2017/12/2016-03-28-1459180714-4846885-cannedfood2-thumb.jpg?resize=406%2C304&ssl=1')
FOOD.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating christmas"
CHRISTMAS = Event.create!(
  title: "Presents for Children",
  category: 'Donation',
  description: 'Christmas presents for kids',
  positions: rand(3..10),
  address: "Colorado, United States",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 10, 20, 00, 00),
  organization: HANDS,
  owner: DOUG,
  item: 'toys',
  tag_list: "Other",
  target: 10000,
  raised: 67642
  )

event_photo = URI.open('https://www.theguardian.pe.ca/media/photologue/photos/cache/20141217-santas-angels-2777820_large.jpg')
CHRISTMAS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')






HEADERS = ["Help", 'Save', 'Rescue']

ADDRESSES.each do |address|

event = Event.new!(
  title: Faker::Food.fruits,
  category: CATEGORIES.sample,
  description: Faker::Hipster.paragraph,
  address: address,
  positions: rand(3..10),
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  tag_list: TAGS.sample,
  owner: user,
  organization: MEBYO,
  target: 10,
  raised: 2
  )

end



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
# require_relative './user_seeds'

# #-----------------SET ORGANIZATIONS------------------------
# require_relative './organization_seeds'

#------------------SET EVENTS--------------

require_relative './event_seeds'


puts '
  _______________________________________    _________
 /   _____/\_   _____/\_   _____/\______ \  /   _____/
 \_____  \  |    __)_  |    __)_  |    |  \ \_____  \
 /        \ |        \ |        \ |    `   \/        \
/_______  //_______  //_______  //_______  /_______  /
        \/         \/         \/         \/        \/


                    ___           ___           ___
     _____         /\  \         /\  \         /\__\
    /::\  \       /::\  \        \:\  \       /:/ _/_
   /:/\:\  \     /:/\:\  \        \:\  \     /:/ /\__\
  /:/  \:\__\   /:/  \:\  \   _____\:\  \   /:/ /:/ _/_
 /:/__/ \:|__| /:/__/ \:\__\ /::::::::\__\ /:/_/:/ /\__\
 \:\  \ /:/  / \:\  \ /:/  / \:\~~\~~\/__/ \:\/:/ /:/  /
  \:\  /:/  /   \:\  /:/  /   \:\  \        \::/_/:/  /
   \:\/:/  /     \:\/:/  /     \:\  \        \:\/:/  /
    \::/  /       \::/  /       \:\__\        \::/  /
     \/__/         \/__/         \/__/         \/__/
     Seeding Complete!
'
