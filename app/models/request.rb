class Request < ApplicationRecord
  belongs_to :rock
  belongs_to :user
  validates :date, presence: true
end
