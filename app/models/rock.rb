class Rock < ApplicationRecord
  belongs_to :user
  has_many :requests
  validates :name, :color, :shape, :price, presence: true
end
