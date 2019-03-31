class Archive < ApplicationRecord
	belongs_to :category

	validates :name, presence:true, length: { minimum: 2}
	#validates :name, format: { with: /\A[0-9a-zA-Z]+\z/, message: "Solo se permiten letras y numeros" }
	validates :typ, presence:true
	validates :tamaño, presence:true, length: { minimum: 3}
	#validates :tamaño, format: { with: /\A[0-9a-zA-Z]+\z/, message: "Solo se permiten letras y numeros" }

end
