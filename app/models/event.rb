class Event < ApplicationRecord
  belongs_to :organization
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :enrollments
  has_many :users, through: :enrollments
  has_one_attached :photo
end
