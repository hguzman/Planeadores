class TransaccionesController < ApplicationController
  def index
  	@transacciones = Transaccion.all
  end
end
