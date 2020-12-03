require 'rails_helper'

RSpec.describe Transaccion, type: :model do

  #Associations

  it { should belong_to(:agente) }

  #Validations
  
  it do
   should validate_presence_of(:valor).
   with_message(': Este campo es obligatorio')

   should validate_numericality_of(:valor).
   with_message(": Este campo no puede contener letras")
  end

end
