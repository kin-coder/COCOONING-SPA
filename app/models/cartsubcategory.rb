class Cartsubcategory < ApplicationRecord
	belongs_to :subcategory
	belongs_to :cartcategory
end
