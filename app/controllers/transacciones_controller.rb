class TransaccionesController < ApplicationController
  def index
  	@transacciones = Transaccion.all
  	@data = Transaccion.group_by_month(:fecha_de_pago).count
  end
end
