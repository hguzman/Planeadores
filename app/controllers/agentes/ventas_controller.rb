class Agentes::VentasController < ApplicationController
  before_action :authenticate_usuario!
	before_action :find_agente
	before_action :find_venta, only: [:show,:edit,:update,:destroy]

  def index
  	@ventas = @agente.ventas
    @title = "Lista de Ventas"
  end

  def new
  	@venta = @agente.ventas.new
    @title = "Nueva Venta"
  end

  def show
    @title = "Mostrar Venta"
  end

  def edit
    @title = "Editar Venta"
  end

  def create
  	@venta = @agente.ventas.new(venta_params)

  	if @venta.save
  		redirect_to agente_venta_path(@agente, @venta)
  	else
  		render :new
  	end
  end

  def update
  	if @venta.update(venta_params)
  		redirect_to agente_venta_path(@agente,@venta)
  	else
  		render :edit
  	end
  end

  def destroy
  	@venta.destroy
  	redirect_to agente_ventas_path
  end

  private

  def find_agente
  	@agente = Agente.find(params[:agente_id])
  end

  def find_venta
  	@venta = Venta.find(params[:id])
  end

  def venta_params
  	params.require(:venta).permit(:valor,:fechaVenta,:medioPago)
  end
end
