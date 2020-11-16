class Organization < ApplicationRecord
  has_many :events
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
end
