class Category < ApplicationRecord
	belongs_to :service
	has_many :subcategories
#=================================RELATION CART
	has_many :cartcategories
	has_many :carts ,through: :cartcategories

end
