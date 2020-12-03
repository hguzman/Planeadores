require 'rails_helper'

RSpec.describe Planeacion, type: :model do

  #Associations

  it { should belong_to(:agente) }

  ##Validations

  it do
   should validate_presence_of(:tematica).
   with_message(': Este campo no puede quedar vacio')
  end

end
