class Category < ApplicationRecord
	belongs_to :service
	has_many :subcategories
end
