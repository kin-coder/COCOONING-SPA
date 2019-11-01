class Department < ApplicationRecord
  belongs_to :country
  has_many :departmentproviders
  has_many :providers, through: :departmentproviders
  
end
