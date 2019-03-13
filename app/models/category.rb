class Category < ApplicationRecord
	#has_and_belongs_to_many :archives
	has_many :archives
end
