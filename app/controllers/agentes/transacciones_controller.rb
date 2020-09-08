class Agentes::TransaccionesController < ApplicationController
	before_action :authenticate_usuario!
  before_action :find_agente
	before_action :find_transaccion, only: [:show, :edit, :update, :destroy]

  def index
  	@transacciones = @agente.transacciones
  	@title = 'Lista de Transacciones'
  end

  def new
  	@transaccion = @agente.transacciones.new
  	@title = 'Nueva Transaccion'
  end

  def show
  	@title = 'Informacion de Transaccion'

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Documento",
        template: "agentes/transacciones/factura.html.erb",
        orientation: 'landscape',
        encoding: "UTF-8"
      end
    end
  end

  def edit
  	@title = 'Editar Transaccion'
  end

  def create
    @transaccion = @agente.transacciones.new(transaccion_params)


  	if @transaccion.save
  		redirect_to agente_transaccion_path(@agente, @transaccion)
      flash.notice = 'Transaccion creada'
  	else
  		render :new
  	end
  end

  def update
  	if @transaccion.update(transaccion_params)
  		redirect_to agente_transaccion_path(@agente, @transaccion)
      flash.notice = 'Transaccion actualizada'
  	else
  		render :edit
  	end
  end

  def destroy
  	@transaccion.destroy
  	redirect_to agente_transacciones_path
    flash.notice = 'Transaccion eliminada'
  end

  private

  def find_agente
  	@agente = Agente.find(params[:agente_id])
  end

  def find_transaccion
  	@transaccion = Transaccion.find(params[:id])
  end

  def transaccion_params
  	params.require(:transaccion).permit(:valor, :medio_de_pago, :fecha_de_pago)
  end
end
