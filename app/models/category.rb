class Category < ApplicationRecord
  validates :name,
            presence: true,
            length: { minimum: 3, maximum: 30 },
            uniqueness: true
end