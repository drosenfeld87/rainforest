class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price_in_cents, presence: true, numericality: { only_integer: true }
  # validates :price, numericality: must be greater than %{0

def price_in_dollars
  price_in_dollars = price_in_cents.to_f / 100
  sprintf("$%.2f", price_in_dollars)
end


end
