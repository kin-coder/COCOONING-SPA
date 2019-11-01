class Category < ApplicationRecord
	belongs_to :service
	has_many :subcategories

	has_many :reservationcategories
	has_many :reservations, through: :reservationcategories
end
