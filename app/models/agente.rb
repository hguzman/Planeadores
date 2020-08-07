class Agente < ApplicationRecord
	has_many :planeaciones
	has_many :transacciones

	validates :primerNombre, :primerApellido, :nombreUds, presence: true
	validates_format_of :primerNombre, :segundoNombre, :primerApellido, :with => /[a-z]/
	validates_format_of :correo,  :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :cedula, uniqueness: true
	validates :cedula, numericality: true
	validates :cedula, length: {maximum: 10}
end
