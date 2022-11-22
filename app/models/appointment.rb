class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :partner
  validates :schedule_date, presence: true
  validates :comment, length: { minimum: 5 }
end
