class Order < ApplicationRecord
	belongs_to :subcategory
	belongs_to :cart
end
