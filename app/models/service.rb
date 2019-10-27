class Service < ApplicationRecord
	has_many :carts
	has_many :categories
end
