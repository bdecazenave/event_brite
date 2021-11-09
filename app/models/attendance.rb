class Attendance < ApplicationRecord
  after_create :event_confirmation_send
  belongs_to :user
  belongs_to :event

end
