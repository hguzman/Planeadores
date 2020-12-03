require 'rails_helper'

RSpec.describe Usuario, type: :model do

  #Validations

  it do
   should validate_presence_of(:primerNombre).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:segundoNombre).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:primerApellido).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:email).
   with_message(': Este campo es obligatorio')
  end

  it do
   should validate_presence_of(:password).
   with_message(': Este campo es obligatorio')

   should validate_length_of(:password).
   is_at_least(6).
   with_message("Mínimo 6 caracteres")

   should validate_confirmation_of(:password).
   with_message(': No coinciden')
  end

end
