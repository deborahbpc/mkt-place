class Announce < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :price, :quantity, :product_name, :product_description,
            :product_category, :announce_type, :photo, presence: true
  validates :product_description, length: { minimum: 100 }
  validates :price, :quantity, numericality: true
  validates :price, :quantity, numericality: { greater_than: 0 }
  validates :announce_type, inclusion: { in: %w[Gallery Top Free] }
end
