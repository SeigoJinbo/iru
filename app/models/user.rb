class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  GENDER = ['female', 'male']
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :enrollments
  has_many :orders
  has_many :donations
  has_many :memberships
  has_many :organizations, through: :memberships
  has_many :organization_comments
  has_many :events_as_owner, class_name: "Event"
  has_many :event_comments
  has_many :enrollment_events, through: :enrollments, source: :event
  has_many :order_events, through: :orders, source: :event
  has_many :donation_events, through: :donations, source: :event

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos

  def events
    enrollment_events + order_events + donation_event
  end
end
