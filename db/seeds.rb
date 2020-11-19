require 'faker'
require "open-uri"

ADDRESSES = [
  "2-9-8 Setagaya-ku, Tokyo",
  "Koyamadai, Shinagawa Tokyo 142-0061",
  "1 Chome-31-1 Nishigotanda, Shinagawa City, Tokyo 141-0031",
  "1-31-1, Shinagawa City, Tokyo 141-0031",
  "3-6-6, Shinagawa City, Tokyo 141-0031",
  "2-4-36 Meguro, Meguro City, Tokyo 153-0063",
  "6-6-19, Shinagawa City, Tokyo 141-0031",
  "2-11-2 Shinagawa City, Tokyo 141-0022",
  "3-9-1, Shinagawa City, Tokyo 142-0062",
  "4-6-6 Meguro, Meguro City, Tokyo 153-0063",
  "2-14-1 Kamimeguro, Meguro City, Tokyo 153-0051",
  "Sarugakucho, Shibuya City, Tokyo 150-0033",
  "1-3-20, Meguro City, Tokyo 153-0051",
  "Kamimeguro, Tokyo 153-0051",
  "3-6-8, Meguro City, Tokyo 153-0043",
  "5-21-9, Minato City, Tokyo 108-0071",
  "3-39-5 Ebisu, Shibuya City, Tokyo 150-0013",
  "4-3-1 Hiroo, Shibuya City, Tokyo 150-0012",
  "Kamimeguro Elementary School, Meguro City, Tokyo 153-0051",
"2-8-17, Meguro City, Tokyo 153-0052"]

ROLES = ['leader', 'member', 'member', 'member']

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

puts "creating users"




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

seigo = User.create!(
  first_name: "Seigo",
  last_name: "Jinbo",
  nickname: "Sei",
  address: "meguro tokyo Japan",
  email: "seigo@iru.com",
  password: "123456",
  description: "BURN IT ALL DOWN. VIVA LA RESISTANCE!",
  gender: "male",
  admin: true
)

yuping = User.create!(
  first_name: "Yuping",
  email: "yuping@iru.com",
  password: "123456",
  address: "meguro tokyo Japan",
  nickname: "Not Yup",
  description: "Do you guys want some eggrolls?",
  gender: "female",
  admin: true
  )

liz = User.create!(
  first_name: "Liz",
  email: "liz@iru.com",
  password: "123456",
  address: "meguro tokyo Japan",
  nickname: "Defs Not Beth",
  description: "I have way too much shit.",
  gender: "female",
  admin: true
  )

puts "creating organizations"
we_love_trees = Organization.create!(
	name: "We love trees",
	email: "trees@welovetrees.com",
	address: "Meguro Station, Tokyo, Japan",
	description: "Save the trees.",
	establishment_year: "2020",
	phone_number: "08077633849",
	hp_url: "http://welovetrees.com",
	twitter_url: "http://twitter.com/trees",
	insta_url: "http://instagram.com/welovetrees",
	tag_list: "Environment/Agricultre"
	)

TAGS = ["Animals/Wildlife", "Children/Youth", "Disasters", "Education", "Environment/Agriculture", "Health", "Women", "Seniors/Disabilities", "Other"]

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

Organization.all.each do |organization|
  Membership.create!(
    organization: organization,
    user: User.all.sample,
    role: 'leader'
  )
end

puts "attaching org photos"
Organization.all.each do |org|
  org_logo = URI.open('https://i.imgur.com/LrBo4bK.png')
  org_banner = URI.open('https://i.imgur.com/qqvHVOz.jpg')
  org.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
  org.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')
end

CATEGORIES = ["Volunteer", "Donate", "Fundraise"]
DAYS = ["Monday", "Tuesday", "Wednesday", "Thrusday", "Friday", "Saturday", "Sunday"]




Organization.all.each do |organization|
  2.times do
    Event.create!(
      title: Faker::Movie.title,
      category: CATEGORIES.sample,
      description: Faker::Hipster.paragraph,
      positions: rand(3..10),
      ongoing: true,
      dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
      start_time: Time.now + rand(10000..100000),
      end_time: Time.now + rand(100000..1000000),
      organization: organization,
      owner: organization.users.first
    )
  end
  Event.create!(
    title: Faker::Movie.title,
    category: CATEGORIES.sample,
    description: Faker::Hipster.paragraph,
    positions: rand(3..10),
    ongoing: false,
    start_time: Time.now + rand(10000..100000),
    end_time: Time.now + rand(100000..1000000),
    organization: organization,
    owner: organization.users.first
  )
end

puts "attaching event photo"
Event.all.each do |event|
  event_photo = URI.open('https://i.imgur.com/SaCQrAE.jpg')
  event.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')
end

60.times do
  Enrollment.create!(
    status: 'pending',
    user: User.all.sample,
    event: Event.all.sample,
    start_time: Time.now + rand(10000..100000),
    end_time: Time.now + rand(100000..1000000)
  )
end



#USERS

user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGPC1Z0S-de16e0810ab9-512')
user_banner = URI.open('https://images.pexels.com/photos/5726296/pexels-photo-5726296.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
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


#ORGANIZATION
puts "creating we love trees"
we_love_trees = Organization.create!(
  name: "We love trees",
  email: "trees@welovetrees.com",
  address: "Meguro Station, Tokyo, Japan",
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

puts "assigning we love trees to seigo"
membership = Membership.new
membership.user = seigo
membership.organization = we_love_trees
membership.save

puts "creating plant a tree"
event = Event.create!(
  title: "Plant a tree",
  category: 'Volunteer',
  description: 'plant a tree',
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: we_love_trees,
  owner: seigo
  )



puts "attaching photo to plant a tree"
event_photo = URI.open('https://www.eco.ca/wp-content/uploads/corporation-of-tomorrow.png')
event.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating enrollment"
enrollment = Enrollment.new
enrollment.user = liz
enrollment.event = event
enrollment.save

