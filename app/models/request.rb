class Request < ApplicationRecord
  belongs_to :rock
  belongs_to :user
  validates :date, :end_date, presence: true
end
