class Category < ApplicationRecord
	has_ancestry #relación con gema ancestry
	has_many :archives

	validates :name, presence:true, length: { minimum: 2}
	#validates :name, format: { with: /\A[0-9a-zA-Z]+\z/, message: "Solo se permiten letras y numeros" }
  #validates :bio, length: { maximum: 500 }
end
