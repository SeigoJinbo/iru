require 'faker'
require "open-uri"

ADDRESSES = [
  "Nishigotanda, Shinagawa City, Tokyo 141-0031",
  "1-31-1, Shinagawa City, Tokyo 141-0031",
  "3-6-6, Shinagawa City, Tokyo 141-0031",
  "2-4-36 Meguro, Meguro City, Tokyo 153-0063",
  "6-6-19, Shinagawa City, Tokyo 141-0031",
  "2-11-2 Shinagawa City, Tokyo 141-0022",
  "3-9-1, Shinagawa City, Tokyo 142-0062",
  "4-6-6 Meguro, Meguro City, Tokyo 153-0063",
  "2-14-1 Kamimeguro, Meguro City, Tokyo 153-0051",
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
  'Sans Souci, Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
  'Den-en-Chofu Elementary School, Kampachi dori, Setagaya, Tokyo, 145-0071, Japan'
]

ROLES = ['leader', 'member', 'member', 'member']
CATEGORIES = ["Volunteer", "Donate", "Fundraise"]
TAGS = ["Animals/Wildlife", "Children/Youth", "Disasters", "Education", "Environment/Agriculture", "Health", "Women", "Seniors/Disabilities", "Other"]

puts "destroying enrollments"
Enrollment.destroy_all
puts "destroying events"
Event.destroy_all
puts "destroying memberships"
Membership.destroy_all
puts "destroying users"
User.destroy_all
puts "destroying organizations"
Organization.destroy_all





#------------------RANDOM USERS-----------------
puts "creating random users"
5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    nickname: Faker::FunnyName.name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    password: "123456",
    description: Faker::Hipster.paragraph,
    gender: Faker::Gender.binary_type
  )
end

puts "attaching users photos"
User.all.each do |user|
  user_avatar = URI.open('https://i.imgur.com/PxgXkTX.png')
  user_banner = URI.open('https://i.imgur.com/nwaLuxT.jpg')
  user.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
  user.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
end


#------------RANDOM ORGANIZATIONS----------------
puts "creating random organizations"


ADDRESSES.each do |address|
  tag = TAGS.sample
  org = Organization.create!(
    email: Faker::Internet.email,
    name: Faker::Dessert.topping,
    address: address,
    description: Faker::Hipster.paragraph,
    establishment_year: rand(1960..2020).to_s,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    hp_url: Faker::Internet.email,
    twitter_url: Faker::Internet.email,
    insta_url: Faker::Internet.email,
    tag_list: tag
  )
  org.tag_list.add(tag)
end

#-----------RANDOM MEMBERSHIPS--------------
Organization.all.each do |organization|
  Membership.create!(
    organization: organization,
    user: User.all.sample,
    role: 'leader'
  )
end

#-----------RANDOM ORG PHOTOS----------------
puts "attaching org photos"
Organization.all.each do |org|
  org_logo = URI.open('https://i.imgur.com/LrBo4bK.png')
  org_banner = URI.open('https://i.imgur.com/qqvHVOz.jpg')
  org.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
  org.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')
end







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
puts 'attach photos to dev team'
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGPC1Z0S-de16e0810ab9-512')
user_banner = URI.open('https://images.pexels.com/photos/1237119/pexels-photo-1237119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
liz.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
liz.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
liz.save

user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BP13R1CL-aa72532c73d4-512')
user_banner = URI.open('https://images.pexels.com/photos/315998/pexels-photo-315998.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
yuping.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
yuping.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
yuping.save

user_avatar = URI.open('https://www.aboutmanchester.co.uk/wp-content/uploads/2017/11/IMG_2409.jpg')
user_banner = URI.open('https://miro.medium.com/max/1400/1*nkARDRVDJaB9bKN0Po53-g.jpeg')
seigo.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
seigo.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
seigo.save


#-----------------SET ORGANIZATIONS------------------------
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




#----------------SET MEMBERSHIPS--------------
puts "assigning we love trees to liz"
membership = Membership.new
membership.user = liz
membership.organization = we_love_trees
membership.save

puts "tsunami relief to liz"
membership = Membership.new
membership.user = liz
membership.organization = tsunami
membership.save

puts "assigning animals are people to yuping"
membership = Membership.new
membership.user = yuping
membership.organization = animal
membership.save


#------------------SET EVENTS--------------
puts "creating plant a tree"
plant_a_tree = Event.create!(
  title: "Plant a tree",
  category: 'Volunteer',
  description: 'plant a tree',
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: we_love_trees,
  owner: liz
  )
puts "attaching photo to plant a tree"
event_photo = URI.open('https://www.eco.ca/wp-content/uploads/corporation-of-tomorrow.png')
plant_a_tree.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "Read to kids"
read_to_kids = Event.create!(
  title: "Read to kids",
  category: 'Volunteer',
  description: 'help children learn to read',
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: Organization.all.sample,
  owner: User.all.sample

  )
puts "attaching photo to Read to kids"
event_photo = URI.open('https://images.pexels.com/photos/5088188/pexels-photo-5088188.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
read_to_kids.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Walk a Panda"
walk_a_panda = Event.create!(
  title: "Walk a Panda",
  category: 'Volunteer',
  description: 'Pandas need exercise',
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: animal,
  owner: yuping
  )
puts "attaching photo to walk a panda"
event_photo = URI.open('https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
walk_a_panda.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



#---------------SET ENROLLMENTS---------------
puts "creating enrollment"

Enrollment.create!(
  user: liz,
  event: read_to_kids,
  status: "Complete",
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: seigo,
  event: plant_a_tree,
  status: "Pending",
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: yuping,
  event: plant_a_tree,
  status: "Pending",
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )





