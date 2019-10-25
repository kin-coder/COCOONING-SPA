class Cart < ApplicationRecord
	has_many :orders
	has_many :subcategories, through: :orders
end
