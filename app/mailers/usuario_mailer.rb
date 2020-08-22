class UsuarioMailer < ApplicationMailer
  def actualizacion(usuario)
    @usuario = usuario

    mail to: usuario.email
  end

  def nuevo(usuario)
    @usuario = usuario

    mail to: usuario.email
  end

  def borrado(usuario)
    @usuario = usuario

    mail to: usuario.email
  end
end
