class Monitorss < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :brand
  belongs_to :country
end
