class AgentesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :find_agente, only: [:show,:edit,:update,:destroy]

  def index
  	@agentes = Agente.all
    @title = "Lista de Agentes"
  end

  def new
  	@agente = Agente.new
    @title = "Nuevo Agente"
  end

  def show
    @title = "Mostrar Agente"
  end

  def edit
    @title = "Editar Agente"
  end

  def create
  	@agente = Agente.new(agente_params)

  	if @agente.save
  		redirect_to agente_path(@agente)
  	else
  		render :new
  	end
  end

  def update
  	if @agente.update(agente_params)
  		redirect_to agente_path(@agente)
  	else
  		render :edit
  	end
  end

  def destroy
    @agente.destroy
    redirect_to agentes_path
  end

  private

  def find_agente
  	@agente = Agente.find(params[:id])
  end

  def agente_params
  	params.require(:agente).permit(:primerNombre,:segundoNombre,:primerApellido,:nombreUds,:modalidad,:correo)
  end
end
