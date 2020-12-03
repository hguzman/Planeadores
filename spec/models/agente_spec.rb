require 'rails_helper'

RSpec.describe Agente, type: :model do

  #Associations

  it { should have_many(:planeaciones).dependent(:destroy) }
  it { should have_many(:transacciones).dependent(:destroy) }

  #Validations

  ##Validating_presences

  it do
   should validate_presence_of(:primerNombre).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:primerApellido).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:nombreUds).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:modalidad).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:correo).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:cedula).
   with_message(': Este campo es obligatorio')

   should validate_length_of(:cedula).
   is_at_least(7).
   with_message(": El número de dígitos debe estar entre 7 y 10")

   should validate_numericality_of(:cedula).
   with_message(": No se pueden ingresar letras")
  end

  #Validating_uniqueness
  
  it do
    should validate_uniqueness_of(:cedula).
    with_message('La cédula debe ser unica')
   end
   it do
     should validate_uniqueness_of(:correo).
     with_message('El correo debe ser unico')
    end

end
