class Motherboard < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :country
end
