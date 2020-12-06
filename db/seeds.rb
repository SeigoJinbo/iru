require 'faker'
require "open-uri"

# ADDRESSES = [
#   "Nishigotanda, Shinagawa City, Tokyo 141-0031",
#   "1-31-1, Shinagawa City, Tokyo 141-0031",
#   "3-6-6, Shinagawa City, Tokyo 141-0031",
#   "2-4-36 Meguro, Meguro City, Tokyo 153-0063",
#   "6-6-19, Shinagawa City, Tokyo 141-0031",
#   "2-11-2 Shinagawa City, Tokyo 141-0022",
#   "Sarugakucho, Shibuya City, Tokyo 150-0033",
#   "Kamimeguro, Tokyo 153-0051",
#   "5-21-9, Minato City, Tokyo 108-0071",
#   "3-39-5 Ebisu, Shibuya City, Tokyo 150-0013",
#   "4-3-1 Hiroo, Shibuya City, Tokyo 150-0012",
#   "Kamimeguro Elementary School, Meguro City, Tokyo 153-0051",
#   "2-8-17, Meguro City, Tokyo 153-0052",
#   "HIRAKUYA OSTERIA, Suzukake Street, Meguro, Tokyo, 152-0035, Japan",
#   "Kingdom Hall of Jehovah's Witnesses, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
#   "maker's base, Meguro ave., Meguro, Tokyo, 152-0001, Japan",
#   "FamilyMart, Ohara-dori, Tokyo, Shinagawa, 142-0042, Japan",
#   "Tokyo Gakugei University Setagaya Junior High School, Komahachi-dori, Setagaya, Tokyo, 158-0081, Japan",
#   "rise: town front, Tamazutsumi St., Setagaya, Tokyo, 158-0094, Japan", "
#   Takashimaya garden place, Tamagawa dori, Setagaya, Tokyo, 158-8502, Japan",
#   "Bird Sanctuary, Okura-dori, Funabashi 1-chome, Funabashi, Setagaya, Tokyo, 157-8510, Japan",
#   "Yogananajo-dori, 1-chome, Funabashi, Setagaya, Tokyo, 158-8577, Japan",
#   'Times, Nakahara kaido, Tokyo, Ota, 145-8523, Japan', 'Tokyo, Ota, 145-0066, Japan',
#   'Gap, Kurinoki-Dori, Meguro, Tokyo, 152-0035, Japan',
#   'Tomorrowland, Maple Street, Meguro, Tokyo, 152-0035, Japan',
#   'Den-en-Chofu Elementary School, Kampachi dori, Setagaya, Tokyo, 145-0071, Japan',
#   'Kannana dori, Meguro, Tokyo, 152-0013, Japan',
#   'Mitsuma-dori, Tokyo, Shinagawa, 142-0054, Japan',
#   '¥Shinagawa, 142-0043, Japan',
#   'Tokyo, Shinagawa, 140-0015, Japan ',
#   'Yukigaya Hachiman Shrine, Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
#   'Nakahara kaido, Tokyo, Ota, 145-8523, Japan',
#   'Ebara Hospital, Gotanda, Tokyo, Shinagawa, 145-0065, Japan',
#   'Tokyo, Ota, 146-0081, Japan',
#   'Setagaya Park, 420, Sangenjaya, Setagaya, Tokyo, 154-0005, Japan',
#   "Showa Women's University, Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0004, Japan",
#   'Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0024, Japan',
#   'Awashima-dori, Taishido, Funabashi, Setagaya, Tokyo, 155-0032, Japan',
#   '426, 1-chome, Funabashi, Setagaya, Tokyo, 154-0014, Japan Water works'
# ]




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

user = User.create!(email: 'user@user.com', password: '123456', gender: "male", description: "...", nickname: "John", first_name: "John", last_name: "Dough", address: "Portland, Oregon")
DOUG = User.create!(
  first_name: "Doug",
  last_name: "Doug",
  nickname: "Dugg",
  address: "meguro tokyo Japan",
  email: "dug@iru.com",
  password: "123456",
  description: "Hey I'm passionate about NPOs",
  gender: "male",
  admin: false
)
user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U4APKLFLM-da0b004a3774-512')
user_banner = URI.open('https://images.pexels.com/photos/1426718/pexels-photo-1426718.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
DOUG.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
DOUG.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
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
  description: "In 1954, UNHCR won the Nobel Peace Prize for its groundbreaking work in Europe. But it was not long before we faced our next major emergency.
  \nIn 1956, during the Hungarian Revolution, 200,000 fled to neighbouring Austria. Recognizing the Hungarians as 'prima facie' refugees, UNHCR led efforts to resettle them. This uprising and its aftermath shaped the way humanitarian organizations would deal with refugee crises in the future.
  \nDuring the 1960s, the decolonization of Africa produced the first of that continent's numerous refugee crises. We also helped uprooted people in Asia and Latin America over the following two decades. In 1981, we received a second Nobel Peace Prize for what had become worldwide assistance to refugees.
  \nThe start of the 21st century has seen UNHCR help with major refugee crises in Africa, the Middle East and Asia. We have also been asked to use our expertise to help many internally displaced by conflict and expanded our role in helping stateless people. In some parts of the world, such as Africa and Latin America, the 1951 Refugee Convention has been strengthened by additional regional legal instruments.
  \nUNHCR now has more than 17,324 personnel. We work in a total of 135 countries and our budget, which in its first year was US$300,000, grew to US$8.6 billion in 2019.
  \nIn 2015, we celebrated our 65th anniversary. During our lifetime, we have helped well over 50 million refugees to successfully restart their lives.",
  establishment_year: "1954",
  phone_number: "08077633849",
  hp_url: "https://www.unhcr.org/",
  fb_url: "https://www.facebook.com/UNHCR/",
  twitter_url: "https://twitter.com/Refugees",
  insta_url: "https://www.instagram.com/refugees/?hl=en",
  tag_list: "Sample"
  )
puts "attaching photos to UNHCR"
org_logo = URI.open('https://upload.wikimedia.org/wikipedia/commons/f/f0/Kokurenunhcrkyoukai.logo.jpg')
UNHCR.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

org_banner = URI.open("https://pbs.twimg.com/profile_banners/14361155/1594242748/1500x500")
UNHCR.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



BASIC = Organization.create!(
  name: "Basic Ph",
  email: "sato@basicph.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "BASIC-Ph is a stress coping multiplex model developed by Israeli psychologist Dr. Moorie Lahad. Dr. Lahad developed this model not by focusing on the pathology of why people failed, but by the resilience of how people got over it and how they got over it.
  \nWhen faced with difficulties in daily life, people survive the situation by making full use of coping methods that can be divided into six fields. The six areas are belief (B), emotion (A), society (S), imagination (I), cognition (C), and body (Ph). People solve daily problems by combining these coping styles.
  \nAnd these six coping methods also appear in communication. People tend to engage with others and the world using their favorite coping strategies. Therefore, first of all, knowing your favorite coping style will help you to know your own communication habits. After understanding your own habits, you can further analyze the coping style of the other party, and you will be able to communicate more smoothly.
  \nIn addition, these six coping styles allow you to assess individual coping tendencies as well as group and community coping tendencies. Therefore, it can also be used for coaching and crisis intervention in the workplace and in the community.
  \nWe believe that knowing the six coping styles will enrich our lives and enrich our lives.",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "https://www.facebook.com/BasicPh/",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to Basic Ph"
org_logo = URI.open('https://i.pinimg.com/564x/e4/6f/7a/e46f7abd46d41f4f122920e453a5756a.jpg')
BASIC.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

org_banner = URI.open("https://scontent.fkix2-1.fna.fbcdn.net/v/t31.0-8/11109617_696322313829076_5142896223092437756_o.jpg?_nc_cat=104&ccb=2&_nc_sid=6e5ad9&_nc_ohc=SvjKVVBbMCQAX-KC2I5&_nc_ht=scontent.fkix2-1.fna&oh=d074ff0fb496bb69e901ac261a54df7b&oe=5FF08F32")
BASIC.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')

WWLD = Organization.create!(
  name: "World Wildlife Day ",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "On 20 December 2013, at its 68th session, the United Nations General Assembly (UNGA) proclaimed 3 March – the day of signature of the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES) in 1973 – as UN World Wildlife Day to celebrate and raise awareness of the world’s wild animals and plants.\
  \n\nThe UNGA resolution also designated the CITES Secretariat as the facilitator for the global observance of this special day for wildlife on the UN calendar. World Wildlife Day has now become the most important global annual event dedicated to wildlife.
  \n\nWorld Wildlife Day will be celebrated in 2020 under the theme 'Sustaining all life on Earth', encompassing all wild animal and plant species as key components of the world's biodiversity. This aligns with UN Sustainable Development Goals 1, 12, 14 and 15, and their wide-ranging commitments on alleviating poverty, ensuring sustainable use of resources, and on conserving life both on land and below water to halt biodiversity loss.
  \n\nEarth is home to countless species of fauna and flora – too many to even attempt counting. This rich diversity, and the billions of years during which its myriad elements have interacted, are precisely what has made our planet inhabitable for all living creatures, including humans. Historically, we have depended on the constant interplay and interlinkages between all elements of the biosphere for all our needs: the air we breathe, the food we eat, the energy we use, and the materials we need for all purposes. However, unsustainable human activities and overexploitation of the species and natural resources that make up the habitats and ecosystems of all wildlife are imperiling the world’s biodiversity. Nearly a quarter of all species are presently at risk of going extinct in the coming decades, and their demise would only speed up the disappearance of countless others, putting us in danger as well.
  \n\nOn World Wildlife Day 2020, we will celebrate the special place of wild plants and animals in their many varied and beautiful forms as a component of the world’s biological diversity. We will work to raise awareness of the multitude of benefits of wildlife to people, particularly to those communities who live in closest proximity to it, and we will discuss the threats they are facing and the urgent need for governments, civil society, private sector actors and individuals to add their voices and take actions to help conserve wildlife and ensure its continued use is sustainable.",
  establishment_year: "2013",
  phone_number: "08077633849",
  hp_url: "https://www.wildlifeday.org/",
  fb_url: 'https://www.facebook.com/WorldWildlifeDay/',
  twitter_url: "https://twitter.com/WildlifeDay",
  insta_url: "https://www.instagram.com/worldwildlifeday/?hl=en",
  tag_list: "Sample"
  )
puts "attaching photos to WWLD"
org_logo = URI.open('https://image.shutterstock.com/image-vector/world-wildlife-day-march-3-260nw-573200827.jpg')
WWLD.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

org_banner = URI.open("https://www.wildlifeday.org/sites/all/themes/wildlifeday/images/theme/bg-top-images/top-bg-2v3.png?v=1.1")
WWLD.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



UNICEF = Organization.create!(
  name: "Unicef",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "Find out how UNICEF drives change for children and young people every day, across the globe.
  \nEvery child has the right to grow up in a safe and inclusive environment
  UNICEF works with partners around the world to promote policies and expand access to services that protect all children.
  \nEvery child has the right to survive and thrive
  UNICEF has helped reduce child mortality all over the world by working to reach the most vulnerable children, everywhere.
  \nEvery child has the right to learn
  UNICEF works around the world to support quality learning for every girl and boy, especially those in greatest danger of being left behind.
  \nReaching every child in emergencies
  UNICEF is on the ground before, during, and after emergencies, working to reach children and families with lifesaving aid and long-term assistance.
  \nEvery girl has the right to fulfil her potential
  UNICEF works all over the world to empower girls and women, and to ensure their full participation in political, social, and economic systems.
  \nInnovating to drive results for every child
  UNICEF works with partners in every sector to co-create innovative solutions that accelerate progress for children and young people.",
  establishment_year: "2020",
  phone_number: "08077633849",
  hp_url: "http://welovetrees.com",
  twitter_url: "http://twitter.com/trees",
  insta_url: "http://instagram.com/welovetrees",
  tag_list: "Sample"
  )
puts "attaching photos to UNICEF"
org_logo = URI.open('https://d.wildapricot.net/images/default-album/unicef.png')
UNICEF.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

org_banner = URI.open("https://www.unicef.org/sites/default/files/styles/media_banner/public/2018-02/02_WWD_UNI174116_Bluewash_WEB.jpg?itok=UIq70818")
UNICEF.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



HANDS = Organization.create!(
  name: "Helping Hands",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "Helping Hands Network is an independent non-profit organization that was created to provide funding for programs that help young adults with special needs. Our mission is to create community awareness and raise funds in support of organizations, who believe that regardless of a persons background or disability, they should be able to enjoy life to its fullest and to participate in the mainstream of their community.",
  establishment_year: "2010",
  phone_number: "08077633849",
  hp_url: "https://www.helpinghandstoday.org/",
  tag_list: "Sample"
  )
puts "attaching photos to HANDS"
org_logo = URI.open('https://venngage-wordpress.s3.amazonaws.com/uploads/2019/04/nonprofit-logo.png')
HANDS.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

org_banner = URI.open("https://www.flipcause.com/uploads/5c4b59f8dc9a8_bannerpng")
HANDS.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')



MORI = Organization.create!(
  name: "Mirai no Mori",
  email: "sato@wwld.com",
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  description: "Mirai no Mori is a not-for-profit organization that creates life-changing outdoor programs for abused, neglected, and orphaned youths in Japan, supporting their growth into happy and successful young adults.
  \n We have over 1,500 campers participated in our programs, so far. And each of them have gained new experiences and grown in their own ways, thanks to our sponsors, volunteers, program staff, and care workers.",
  establishment_year: "2011",
  phone_number: "08077633849",
  hp_url: "https://mirai-no-mori.jp",
  twitter_url: "https://twitter.com/Mirai_no_Mori",
  insta_url: "https://www.instagram.com/mirainomori/",
  fb_url: "https://www.facebook.com/MiraiNoMori/",
  tag_list: "Sample"
  )
puts "attaching photos to MORI"
org_logo = URI.open('https://scontent-nrt1-1.xx.fbcdn.net/v/t31.0-0/cp0/e15/q65/p320x320/468508_472465212841537_1329765003_o.jpg?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=ARlhtRjjai8AX8L2csN&_nc_ht=scontent-nrt1-1.xx&tp=3&oh=3097b736dab1e40e7858b984ae47b04b&oe=5FE2A19D')
MORI.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')

org_banner = URI.open("https://pbs.twimg.com/profile_banners/3220941001/1556172024/1500x500")
MORI.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')






puts "creating polar bears"
POLAR_BEARS = Event.create!(
  title: "Save the polar bears",
  category: 'Fundraiser',
  description: 'Donate to World Wildlife Day to help raise awareness and support scientific research and initiatives that help determine a way on how to save polar bears from global warming. Charity Navigator gives the charity an 82.51 score out of 100, with 77 percent of the money it raises going directly to programs and services that help their mission.',
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
  title: "Book Donation",
  category: 'Donation',
  description: 'Reading empowers children to discover their interests and develop the skills they need to pursue them. The earlier they start, the farther they go. That’s why there must be considerable investment in the early childhood experience, that time of life when we have the greatest chance to intervene before an education gap can grow.',
  positions: rand(3..10),
  address: "Nairobi, Kenya",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 12, 20, 00, 00),
  organization: UNICEF,
  owner: DOUG,
  item: 'books',
  tag_list: "Education",
  target: 1000,
  raised: 893
  )

event_photo = URI.open('http://www.hiv-aids-kids.org/image/CSC29S.jpg')
CHILDREN.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "creating foodbank"
FOOD = Event.create!(
  title: "Foodbank fundraiser",
  category: 'Fundraiser',
  description: "Over 90 percent of the food distributed by food banks in the UNICEF network is donated by the public – that’s why your food donations are absolutely vital to our ability to give everyone referred to us a balanced and nutritious three day supply of food. Without your goodwill, our food banks would really struggle to operate.",
  positions: rand(3..10),
  address: "Sydney, Australia",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 10, 20, 00, 00),
  organization: UNHCR,
  owner: DOUG,
  item: 'cans',
  tag_list: "Other",
  target: 200000,
  raised: 148792
  )

event_photo = URI.open('https://i0.wp.com/centraldigest.com/wp-content/uploads/2017/12/2016-03-28-1459180714-4846885-cannedfood2-thumb.jpg?resize=406%2C304&ssl=1')
FOOD.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "creating christmas"
CHRISTMAS = Event.create!(
  title: "Presents for Kids",
  category: 'Donation',
  description: "There’s nothing quite like Christmas to bring out the kid in everyone. Holiday cards, gift giving and receiving, stuffed animals and other toys, hoping for that perfect gift from someone special — the Christmas season is a special time of year.
  \nBut for millions of children all over the world who face hunger, lack of clean water, homelessness and poverty on a daily basis, the holiday season isn't something to celebrate, especially for children suffering the economic, physical and emotional impacts of COVID-19.
  \nThey don’t put up Christmas trees or decorations, sing carols, stay up late listening for sleigh bells, or wake up early to unwrap new Christmas presents of toys or gift cards. Feeling unloved and forgotten, these children may never know the true hope and joy that Christmas promises.
  \nWe believe that every child deserves to receive Christmas gifts. Thanks to donations from people like you to the Christmas Gift Fund, we make sure that every child in our program feels special on Christmas Day. Your generosity to give back and bless others from the abundance the Lord has given you helps to make Christmas feel special to children living in poverty.
  \nYou can bring the Christmas spirit to children in need. Give a Christmas gift today!",
  positions: rand(3..10),
  address: "Colorado, United States",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.new(2020, 12, 10, 20, 00, 00),
  organization: UNICEF,
  owner: DOUG,
  item: 'toys',
  tag_list: "Children/Youth",
  target: 10000,
  raised: 6764
  )

event_photo = URI.open('https://www.theguardian.pe.ca/media/photologue/photos/cache/20141217-santas-angels-2777820_large.jpg')
CHRISTMAS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



# ANIMALLIST = ["Contribute to pet adoption", "Help with pandas", "Save stray cats", "Food for animals"]
# CHILDRENLIST =["Toys for children", "Youth sports", "Help special needs children"]
# DISASTERLIST = ["Disaster relief", "Tsunami relief", "Earthquake relief"]
# EDUCATIONLIST = ["Books for students", "Assistance for scholarships", "Community tutoring" ]
# ENVIRONMENTLIST = ["Aid in water purification", "Keep the rivers clean", "Planting trees"]
# HEALTHLIST = ["Medical research for COVID-19", "Testing for new medicine", "First aid education"]
# WOMENLIST = ["Support future female leaders", "Self defence for ladies", "STEM skills for girls"]
# SENIORLIST = ["Support for seniors", "Aid for disabilities", "Bingo with seniors"]
# OTHERLIST = ["Community legal advice", "Food drive collection", "Soup kitchen"]


# ADDRESSES.each do |address|

# event = Event.new(
#   title: Faker::Food.fruits,
#   category: CATEGORIES.sample,
#   description: Faker::Hipster.paragraph,
#   address: address,
#   positions: rand(3..10),
#   start_time: Time.now + rand(10000..100000),
#   end_time: Time.now + rand(100000..1000000),
#   tag_list: TAGS.sample,
#   owner: user,
#   organization: Organization.all.sample,
#   target: 10,
#   raised: 2
#   )

#   case event[:tag_list]
#   when ["Animals/Wildlife"]
#     event[:title] = ANIMALLIST.sample
#   when ["Children/Youth"]
#     event[:title] = CHILDRENLIST.sample
#   when ["Disasters"]
#     event[:title] = DISASTERLIST.sample
#   when ["Education"]
#     event[:title] = EDUCATIONLIST.sample
#   when ["Environment/Agriculture"]
#     event[:title] = ENVIRONMENTLIST.sample
#   when ["Health"]
#     event[:title] = HEALTHLIST.sample
#   when ["Women"]
#     event[:title] = WOMENLIST.sample
#   when ["Seniors/Disabilities"]
#     event[:title] = SENIORLIST.sample
#   else
#     event[:title] = OTHERLIST.sample
#   end
#   event.save
# end



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
