class Agente < ApplicationRecord
	has_many :planeaciones
	has_many :ventas
end
