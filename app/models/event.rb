class Event < ApplicationRecord
  belongs_to :organization
  has_many :enrollments
  has_many :orders

  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'

  has_many :users, through: :enrollments
  # has_many :fundraisers, through: :orders, source: :users
  # has_many :volunteers, through: :enrollments, source: :users
  has_one_attached :photo
  monetize :price_cents

  CATEGORIES = ["Volunteer", "Donation", "Fundraiser"]

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :positions, presence: true
  #validates :ongoing, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
