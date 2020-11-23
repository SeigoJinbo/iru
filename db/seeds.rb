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
