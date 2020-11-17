class Organization < ApplicationRecord
  has_many :events
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
end
