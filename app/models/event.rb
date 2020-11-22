class Event < ApplicationRecord
  CATEGORIES = ["Volunteer", "Donation", "Fundraiser"]
  belongs_to :organization
  has_many :enrollments
  has_many :orders
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :enrollments
  has_many :event_comments
  has_one_attached :photo
  
  monetize :price_cents

  include PgSearch::Model
  multisearchable against: :title

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :positions, presence: true
  #validates :ongoing, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
