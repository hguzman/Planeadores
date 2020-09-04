class UsuariosController < ApplicationController
  before_action :validar_session
	before_action :authenticate_usuario!
	before_action :find_usuario, only: [:show, :edit, :update, :destroy]

  def index
  	@usuarios = Usuario.all
  	@title = "Lista de Usuarios"
  end

  def new
  	@usuario = Usuario.new
  	@title = "Nuevo Usuario"
  end

  def show
  	@title = "Mostrar Usuario"
  end

  def edit
  	@title = "Editar Usuario"
  end

  def create
  	@usuario = Usuario.new(usuario_params)

  	if @usuario.save
      UsuarioMailer.nuevo(@usuario).deliver

  		redirect_to usuario_path(@usuario)
  	else
  		render :new
  	end
  end

  def update
  	if @usuario.update(usuario_params)
      UsuarioMailer.actualizacion(@usuario).deliver
  		redirect_to usuario_path(@usuario)
  	else
  		render :edit
  	end
  end

  def destroy
    UsuarioMailer.borrado(@usuario).deliver
  	@usuario.destroy
  	redirect_to usuarios_path
  end

  private

  def find_usuario
  	@usuario = Usuario.find(params[:id])
  end

  def validar_session
    if usuario_signed_in?
      if !current_usuario.has_role? :admin
        redirect_to agentes_path
        flash.notice = 'No tienes permisos para ver esta página'
      end
    end
  end

  def usuario_params
  	params.require(:usuario).permit(:email, :password, :password_confirmation, :primerNombre, :segundoNombre,:primerApellido, role_ids: []);
  end
end
