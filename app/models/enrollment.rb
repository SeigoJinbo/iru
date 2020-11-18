class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_time_after_start_time

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after the start time")
    end
  end

  def approve!
    @status = 'Approved'
  end

  def decline!
    @status = 'Declined'
  end
end
