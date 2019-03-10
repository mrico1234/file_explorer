class Archive < ApplicationRecord
	#has_and_belongs_to_many :categories
	has_many :has_categories 
	has_many :categories, through: :has_categories
end
