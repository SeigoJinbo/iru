class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :registrations
  has_many :events, through: :registrations
  has_many :memberships
  has_many :organizations, through: :memberships
  has_many :events_as_owner, class_name: "Event"
end
