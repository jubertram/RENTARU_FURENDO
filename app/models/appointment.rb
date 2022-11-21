class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :partner
  validates :schedule_date, presence: true
end
