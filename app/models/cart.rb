class Cart < ApplicationRecord
	belongs_to :service

	has_many :cartcategories, dependent: :destroy
	has_many :categories ,through: :cartcategories

	has_many :timeslots, dependent: :destro
end
