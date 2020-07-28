class Transaccion < ApplicationRecord
  belongs_to :agente

  validates :valor, numericality: true
  validates :valor, presence: true
end
