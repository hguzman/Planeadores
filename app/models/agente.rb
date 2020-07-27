class Agente < ApplicationRecord
	has_many :planeaciones
	has_many :transacciones

	validates :cedula, uniqueness: true
end
