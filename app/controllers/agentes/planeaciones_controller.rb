class Agentes::PlaneacionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :find_agente
  before_action :find_planeacion, only: [:show,:edit,:update,:destroy]

  def index
    @planeaciones = @agente.planeaciones
    @title = "Lista de Planeaciones"
  end

  def new
  	@planeacion = @agente.planeaciones.new
    @title = "Nueva Planeacion"
  end

  def show
    @title = "Mostrar Planeacion"

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Documento",
        template: "agentes/planeaciones/pdf.html.erb",
        orientation: 'landscape',
        encoding: "UTF-8",
        page_size: "Letter",
        layout: "pdf",
        font_name: "HELVETICA",
        font_size: 10
      end
    end
  end

  def edit
    @title = "Editar Planeacion"
  end

  def create
  	@planeacion = @agente.planeaciones.new(planeacion_params)

		if @planeacion.save
			redirect_to agente_planeacion_path(@agente,@planeacion)
      flash.notice = 'Planeacion creada'
		else
			render :new
		end
  end

  def update
  	if @planeacion.update(planeacion_params)
  		redirect_to agente_planeacion_path(@agente,@planeacion)
      flash.notice = 'Planeacion actualizada'
  	else
  		render :edit
  	end
  end

  def destroy
  	@planeacion.destroy
  	redirect_to agente_planeaciones_path
    flash.notice = 'Planeacion eliminada'
  end

  private

  def find_agente
  	@agente = Agente.find(params[:agente_id])
  end

  def find_planeacion
  	@planeacion = Planeacion.find(params[:id])
  end

  def planeacion_params
 		params.require(:planeacion).permit(:formato, :tematica, :estado, :fecha_de_creacion) 	
  end
end
