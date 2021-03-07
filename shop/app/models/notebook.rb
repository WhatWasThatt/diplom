class Notebook < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :country
  belongs_to :color
  belongs_to :os
end
