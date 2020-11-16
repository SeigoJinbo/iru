# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Registration.destroy_all
Event.destroy_all
Membership.destroy_all
User.destroy_all
Organization.destroy_all



seigo = User.create!(
  first_name: "Seigo",
  email: "fake@fake.com",
  password: "123456")

yuping = User.create!(
  first_name: "Yuping",
  email: "fake2@fake.com",
  password: "123456")

liz = User.create!(
  first_name: "Liz",
  email: "fake3@fake.com",
  password: "123456")


puts "creating organization"
we_love_trees = Organization.create!(name: "We love trees")

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

puts "creating registration"
registration = Registration.new
registration.user = liz
registration.event = event
registration.save
