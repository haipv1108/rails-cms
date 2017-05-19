class SubCategory < ApplicationRecord
  validates :name,
            presence: true,
            length: { minimum: 3, maximum: 30 },
            uniqueness: true
  belongs_to :category
end