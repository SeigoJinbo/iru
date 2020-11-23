class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :enrollments
  has_many :orders
  has_many :memberships
  has_many :organizations, through: :memberships
  has_many :organization_comments
  has_many :events_as_owner, class_name: "Event"
  has_many :event_comments
  has_many :events, through: :enrollments
  has_many :events, through: :donations
  # has_many :events_as_fundraiser, through: :orders, source: :events
  #has_many :events_as_volunteer, class_name: "Event", through: :enrollments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
end
