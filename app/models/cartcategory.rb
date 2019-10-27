class Cartcategory < ApplicationRecord
	belongs_to :category
	belongs_to :cart
#=======================================RELATION N-N ENTRE CARTCATEGORY AND SUBCATEGORY
	has_many :cartsubcategories, dependent: :destroy
	has_many :subcategories, through: :cartsubcategories

end
