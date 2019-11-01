class Subcategory < ApplicationRecord
	belongs_to :category

	has_many :reservationsubcategories
	has_many :reservationcategories, through: :reservationsubcategories

end
