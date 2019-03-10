class Category < ApplicationRecord
	#has_and_belongs_to_many :archives
	#has_many :has_categories 
	has_many :articles, through: :has_categories

	has_ancestry #relación con gema ancestry
end
