class Reservationsubcategory < ApplicationRecord
	belongs_to :subcategory
	belongs_to :reservationcategory
end
