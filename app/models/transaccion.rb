class Transaccion < ApplicationRecord
  belongs_to :agente

  self.inheritance_column = nil

  enum mediopago:[:Halo, :Halo2] 

  validates :valor, numericality: true
  validates :valor, presence: true
end
