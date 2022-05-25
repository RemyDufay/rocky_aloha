class Rock < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_one_attached :photo
  validates :name, :color, :shape, :price, presence: true

  COLORS = [:blue, :red, :yellow, :black, :grey, :green, :white]
  SHAPES = [:round, :pointy, :big, :sharp]
end
