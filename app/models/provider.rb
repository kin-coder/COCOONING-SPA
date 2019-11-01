class Provider < ApplicationRecord
  has_many :departmentproviders
  has_many :departments, through: :departmentproviders
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
