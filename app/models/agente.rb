class Agente < ApplicationRecord
	has_many :planeaciones, dependent: :destroy
	has_many :transacciones, dependent: :destroy

	validates :primerNombre, format: {  with: /([a-zA-Z]+)([\D])/, message: ': No se aceptan numeros'}
	validates :primerNombre, presence: { with: /([a-zA-Z]+)([\D])/, message: ': Este campo es obligatorio'}
	validates :primerApellido, format: {  with: /([a-zA-Z]+)([\D])/, message: ': No se aceptan numeros'}
	validates :primerApellido, presence: {message: ': Este campo es obligatorio'}
	validates :nombreUds, presence: {message: ': Este campo es obligatorio'}
	validates :modalidad, presence: {message: ': Este campo es obligatorio'}
	validates :correo, presence: {message: ': Este campo es obligatorio'}
	validates :cedula, presence: {message: ': Este campo es obligatorio'}
	validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalido" }
	validates :cedula, length: { in: 7..10, message: ': El número de dígitos debe estar entre 7 y 10' }
	validates :cedula, numericality: { only_integer: true, message: ': No se pueden ingresar letras' }
	validates :cedula, uniqueness: {message: 'La cédula debe ser unica'}
	validates :correo, uniqueness: {message: 'El correo debe ser unico'}

	# RSpec.describe Agente, type: :model do
	#   it { should have_many(:planeaciones).dependent(:destroy) }
	# end

	# rspec spec/models/agente_spec.rb
end
