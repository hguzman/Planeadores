class AgentesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :find_agente, only: [:show,:edit,:update,:destroy]

  def index
  	@agentes = Agente.all
    @title = "Lista de Agentes"

    respond_html_and_csv
  end

  def respond_html_and_csv
  respond_to do |format|
    format.html
    format.xlsx do
      response.headers['Content-Disposition'] = 'attachment; filename="agentes.xlsx"'
    end
  end
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
      NotificacionMailer.nuevo(@agente).deliver

  		redirect_to agente_path(@agente)
      flash.notice = 'Agente creado'
  	else
  		render :new
  	end
  end

  def update
  	if @agente.update(agente_params)
      NotificacionMailer.actualizacion(@agente).deliver
  		redirect_to agente_path(@agente)
      flash.notice = 'Agente actualizado'
  	else
  		render :edit
  	end
  end

  def destroy
    NotificacionMailer.borrado(@agente).deliver
    @agente.destroy
    redirect_to agentes_path
    flash.notice = 'Agente eliminado'
  end

  private

  def find_agente
  	@agente = Agente.find(params[:id])
  end

  def agente_params
  	params.require(:agente).permit(:primerNombre,:segundoNombre,:primerApellido,:nombreUds,:modalidad,:correo, :cedula)
  end
end
