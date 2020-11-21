class OrganizationComment < ApplicationRecord
  belongs_to :organization
  belongs_to :user

  validates :content, presence: true
end
