class Reservation < ApplicationRecord
	belongs_to :service
	belongs_to :client

	has_many :reservationcategories
	has_many :categories, through: :reservationcategories

	has_many :timeslots

end
