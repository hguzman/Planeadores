class Agente < ApplicationRecord
	has_many :planeaciones
	has_many :ventas

	validates :cedula, uniqueness: true
end
