class Subcategory < ApplicationRecord
	belongs_to :category
#==============================RALATION CARTSUBCATEGORY
	has_many :cartsubcategories
	has_many :cartcategories, through: :cartsubcategories

end
