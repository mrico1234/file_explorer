class Category < ApplicationRecord
	has_ancestry #relación con gema ancestry
	has_many :archives, dependent: :destroy

	validates :name, presence:true, length: { minimum: 2}
	validates :name, format: { with: /\A[A-Za-z0-9\s]+\z/, message: "Los signos o caracteres especiales no estan permitidos" }

end
