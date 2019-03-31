class Archive < ApplicationRecord
	belongs_to :category

	validates :name, presence:true, length: { minimum: 2}
	validates :name, format: { with: /\A[A-Za-z0-9\s]+\z/, message: "Los signos o caracteres especiales no estan permitidos" }

	validates :typ, presence:true

	validates :tamaño, presence:true, length: { minimum: 3}
	validates :tamaño, format: { with: /\A[A-Za-z0-9\s]+\z/, message: "Los signos o caracteres especiales no estan permitidos" }

end
