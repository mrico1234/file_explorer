class Category < ApplicationRecord
	has_ancestry #relación con gema ancestry
	has_many :archives
end
