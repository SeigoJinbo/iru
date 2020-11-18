class Event < ApplicationRecord
  belongs_to :organization
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :enrollments
  has_many :users, through: :enrollments
  has_one_attached :photo

  CATEGORIES = ["volunteer", "donate", "fundraise"]

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :positions, presence: true
  #validates :ongoing, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
