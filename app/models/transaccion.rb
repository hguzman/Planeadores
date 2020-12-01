class Transaccion < ApplicationRecord
  belongs_to :agente

  validates :valor, numericality: {message: ': Este campo no puede contener letras'}
  validates :valor, presence: {message: ': Este campo es obligatorio'}
end
