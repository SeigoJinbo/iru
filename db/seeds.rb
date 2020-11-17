require 'faker'

ADDRESSES = ["9-8, Ikejiri 2-chome, Setagaya-ku, Tokyo", "2 Chome-7 Koyamadai, 品川区 Tokyo 142-0061", "1 Chome-31-1 Nishigotanda, Shinagawa City, Tokyo 141-0031", "4 Chome-1-1 Shimomeguro, Meguro City, Tokyo 153-0064", "3 Chome-6-6 Nishigotanda, Shinagawa City, Tokyo 141-0031", "2-4-36 Meguro, Meguro City, Tokyo 153-0063", "6 Chome-6-19 Nishigotanda, Shinagawa City, Tokyo 141-0031", "2 Chome-11-2 Higashigotanda, Shinagawa City, Tokyo 141-0022", "3 Chome-9-1 Koyama, Shinagawa City, Tokyo 142-0062", "4 Chome-6-6 Meguro, Meguro City, Tokyo 153-0063", "2 Chome-14-1 Kamimeguro, Meguro City, Tokyo 153-0051", "17-5 Sarugakucho, Shibuya City, Tokyo 150-0033", "1 Chome-3-20 Kamimeguro, Meguro City, Tokyo 153-0051", "4 Chome-33-12 Kamimeguro, Meguro City, Tokyo 153-0051", "3 Chome-6-8 Higashiyama, Meguro City, Tokyo 153-0043", "5 Chome-21-9 Shirokanedai, Minato City, Tokyo 108-0071", "3 Chome-39-5 Ebisu, Shibuya City, Tokyo 150-0013", "4 Chome-3-1 Hiroo, Shibuya City, Tokyo 150-0012", "5 Chome-6-22 Kamimeguro, Meguro City, Tokyo 153-0051", "2 Chome-8-17 Yutenji, Meguro City, Tokyo 153-0052"]
ROLES = ['leader', 'member', 'member', 'member']


Enrollment.destroy_all
Event.destroy_all
Membership.destroy_all
User.destroy_all
Organization.destroy_all


seigo = User.create!(
  first_name: "Seigo",
  last_name: "Jinbo",
  nickname: "Sei",
  address: "meguro",
  email: "seigo@iru.com",
  password: "123456",
  description: "wutup",
  gender: "male"
)

yuping = User.create!(
  first_name: "Yuping",
  email: "yuping@iru.com",
password: "123456")

liz = User.create!(
  first_name: "Liz",
  email: "liz@iru.com",
password: "123456")


50.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    nickname: Faker::FunnyName.name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    password: "123456",
    description: Faker::Hipster.paragraph,
    gender: Faker::Gender.binary_type,

  )
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
      dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)),
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
