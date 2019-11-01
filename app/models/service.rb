class Service < ApplicationRecord
	has_many :categories
	has_many :reservations
	has_many :comments
end
