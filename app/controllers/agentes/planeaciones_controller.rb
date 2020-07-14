class Agentes::PlaneacionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :find_agente
  before_action :find_planeacion, only: [:show,:edit,:update,:destroy]

  def index
    if params[:estado]
      @planeaciones = @agente.planeaciones.where(estado: params[:estado])
    else
      @planeaciones = @agente.planeaciones
    end
    @title = "Lista de Planeaciones"
  end

  def new
  	@planeacion = @agente.planeaciones.new
    @title = "Nueva Planeacion"
  end

  def show
    @title = "Mostrar Planeacion"
  end

  def edit
    @title = "Editar Planeacion"
  end

  def create
  	@planeacion = @agente.planeaciones.new(planeacion_params)

		if @planeacion.save
			redirect_to agente_planeacion_path(@agente,@planeacion)
		else
			render :new
		end
  end

  def update
  	if @planeacion.update(planeacion_params)
  		redirect_to agente_planeacion_path(@agente,@planeacion)
  	else
  		render :edit
  	end
  end

  def destroy
  	@planeacion.destroy
  	redirect_to agente_planeaciones_path  	
  end

  private

  def find_agente
  	@agente = Agente.find(params[:agente_id])  	
  end

  def find_planeacion
  	@planeacion = Planeacion.find(params[:id])
  end

  def planeacion_params
 		params.require(:planeacion).permit(:formato, :tematica, :estado) 	
  end
end
