class DashboardController < ApplicationController
	before_action :authenticate_usuario!
	layout "dashboard"
  def dashboard
  	@data = Transaccion.group_by_month(:fecha_de_pago).count
  	@años = Transaccion.group_by_year(:fecha_de_pago).count
  end
end
