class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :partner
  validates :start_time, presence: true
  validates :end_time, presence: true
end
