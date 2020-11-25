class Event < ApplicationRecord
  CATEGORIES = [nil, "Volunteer", "Donation", "Fundraiser"]
  LIST = [nil, "Animals/Wildlife", "Children/Youth", "Disasters", "Education", "Environment/Agriculture", "Health", "Women", "Seniors/Disabilities", "Other"]

  belongs_to :organization
  has_many :enrollments
  has_many :orders
  has_many :donations
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :enrollments
  has_many :event_comments
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_taggable_on :tags
  acts_as_taggable_on :donation_tags

  monetize :price_cents

  include PgSearch::Model
  multisearchable against: :title

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  #validates :positions, presence: true
  #validates :ongoing, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :target, presence: true
	validates :address, presence: true
	validates :tag_list, presence: true


  def tag_number
    LIST.index(tag_list[0])
  end
end
