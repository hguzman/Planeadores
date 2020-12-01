class Planeacion < ApplicationRecord
  belongs_to :agente

  validates :tematica, presence: {message: ': Este campo no puede quedar vacio'}
end
