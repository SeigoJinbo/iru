class Organization < ApplicationRecord
LIST = ["Animals/Wildlife", "Children/Youth", "Disasters", "Education", "Environment/Agriculture", "Health", "Women", "Seniors/Disabilities", "Other"]

  has_many :events
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_many :organization_comments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
	has_many_attached :photos
	acts_as_taggable_on :tags

  def tag_number
    LIST.index(tag = tag_list[0])
  end
end
