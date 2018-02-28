class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price_in_cents, presence: true, numericality: { only_integer: true }
  # validates :price, numericality: must be greater than %{0
end
