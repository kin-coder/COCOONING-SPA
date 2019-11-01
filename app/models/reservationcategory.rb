class Reservationcategory < ApplicationRecord
	belongs_to :category
	belongs_to :reservation

	has_many :reservationsubcategories
	has_many :subcategories, through: :reservationsubcategories
end
