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

Enrollment.destroy_all
Event.destroy_all
Membership.destroy_all
User.destroy_all
Organization.destroy_all

puts "creating users"

seigo = User.create!(
  first_name: "Seigo",
  last_name: "Jinbo",
  nickname: "Sei",
  address: "meguro tokyo Japan",
  email: "seigo@iru.com",
  password: "123456",
  description: "wutup",
  gender: "male"
)

yuping = User.create!(
  first_name: "Yuping",
  email: "yuping@iru.com",
  password: "123456",
  address: "meguro tokyo Japan",
  nickname: "Yup",
  gender: "female")

liz = User.create!(
  first_name: "Liz",
  email: "liz@iru.com",
  password: "123456",
  address: "meguro tokyo Japan",
  nickname: "Beth",
  gender: "female")


50.times do
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


puts "creating organization"
we_love_trees = Organization.create!(name: "We love trees")

ADDRESSES.each do |address|
  Organization.create!(
    email: Faker::Internet.email,
    name: Faker::Dessert.topping,
    address: address,
    description: Faker::Hipster.paragraph,
    establishment_year: rand(1960..2020).to_s,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    hp_url: Faker::Internet.email,
    twitter_url: Faker::Internet.email,
    insta_url: Faker::Internet.email
  )
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


CATEGORIES = ["volunteer", "donate", "fundraise"]
DAYS = ["Monday", "Tuesday", "Wednesday", "Thrusday", "Friday", "Saturday", "Sunday"]

puts "creating membership"
membership = Membership.new
membership.user = seigo
membership.organization = we_love_trees
membership.save

puts "creating event"
event = Event.create(title: "Plant a tree")
event.organization = we_love_trees
event.owner = seigo
event.save


Organization.all.each do |organization|
  2.times do
    Event.create!(
      title: Faker::Movie.title,
      category: CATEGORIES.sample,
      description: Faker::Hipster.paragraph,
      positions: rand(3..10),
      ongoing: true,
      dates: [1, 2, 3, 4, 5, 6, 7].sample(rand(1..7)).sort,
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

puts "creating enrollment"
enrollment = Enrollment.new
enrollment.user = liz
enrollment.event = event
enrollment.save
