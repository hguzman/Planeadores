class Planeacion < ApplicationRecord
  belongs_to :agente

  validates :tematica, presence: true
end
