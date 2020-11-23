

# # doug 'https://ca.slack-edge.com/T02NE0241-U4APKLFLM-da0b004a3774-512'
# doug = User.create!(
#   first_name: "Doug",
#   last_name: "Doug",
#   nickname: "Dugg",
#   address: "meguro tokyo Japan",
#   email: "dug@iru.com",
#   password: "123456",
#   description: "gives assistance and judgment",
#   gender: "male",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U4APKLFLM-da0b004a3774-512')
# doug.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# doug.save

# # tomo 'https://ca.slack-edge.com/T02NE0241-U01BNV6UT5J-a4aaf5262922-512'
# tomo = User.create!(
#   first_name: "Tomo",
#   last_name: "Tomo",
#   nickname: "Tomo",
#   address: "meguro tokyo Japan",
#   email: "tomo@iru.com",
#   password: "123456",
#   description: "more animations",
#   gender: "male",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BNV6UT5J-a4aaf5262922-512')
# tomo.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# tomo.save

# # taku 'https://ca.slack-edge.com/T02NE0241-U01BA1V6NT0-c1f678e8f104-512'
# taku = User.create!(
#   first_name: "Taku",
#   last_name: "Taku",
#   nickname: "Taku",
#   address: "meguro tokyo Japan",
#   email: "taku@iru.com",
#   password: "123456",
#   description: "...",
#   gender: "male",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BA1V6NT0-c1f678e8f104-512')
# taku.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# taku.save

# # alex 'https://ca.slack-edge.com/T02NE0241-U01B28171C7-39328fb417e5-512'
# alex = User.create!(
#   first_name: "Alex",
#   last_name: "Alex",
#   nickname: "Tarako",
#   address: "meguro tokyo Japan",
#   email: "alex@iru.com",
#   password: "123456",
#   description: "my glasses are foggy...",
#   gender: "male",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01B28171C7-39328fb417e5-512')
# alex.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# alex.save

# # aline 'https://ca.slack-edge.com/T02NE0241-U01BA61426A-96a4db6efb46-512'
# aline = User.create!(
#   first_name: "Aline",
#   last_name: "Aline",
#   nickname: "Aline",
#   address: "meguro tokyo Japan",
#   email: "aline@iru.com",
#   password: "123456",
#   description: " ",
#   gender: "female",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BA61426A-96a4db6efb46-512')
# aline.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# aline.save

# # jess 'https://ca.slack-edge.com/T02NE0241-U01BGQF8EN6-38cf90e892b8-512'
# jess = User.create!(
#   first_name: "jess",
#   last_name: "jess",
#   nickname: "Jess",
#   address: "meguro tokyo Japan",
#   email: "jess@iru.com",
#   password: "123456",
#   description: " ",
#   gender: "female",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGQF8EN6-38cf90e892b8-512')
# jess.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# jess.save


# # sho 'https://ca.slack-edge.com/T02NE0241-U01BGQ7MZ4J-e39557371271-512'
# sho = User.create!(
#   first_name: "sho",
#   last_name: "sho",
#   nickname: "sho",
#   address: "meguro tokyo Japan",
#   email: "sho@iru.com",
#   password: "123456",
#   description: "i think i broke everything...",
#   gender: "male",
#   admin: false
# )
# user_avatar = URI.open('https://ca.slack-edge.com/T02NE0241-U01BGQF8EN6-38cf90e892b8-512')
# sho.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
# sho.save


puts 'creating dev team'

SEIGO = User.create!(
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
SEIGO.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
SEIGO.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
SEIGO.save

YUPING = User.create!(
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
YUPING.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
YUPING.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
YUPING.save

LIZ = User.create!(
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
LIZ.photos.attach(io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png')
LIZ.photos.attach(io: user_banner, filename: 'user_banner.jpg', content_type: 'image/jpg')
LIZ.save





