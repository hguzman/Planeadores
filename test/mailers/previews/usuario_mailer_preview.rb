# Preview all emails at http://localhost:3000/rails/mailers/usuario_mailer
class UsuarioMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/usuario_mailer/actualizacion
  def actualizacion
    UsuarioMailer.actualizacion(Usuario.first)
  end

  # Preview this email at http://localhost:3000/rails/mailers/usuario_mailer/nuevo
  def nuevo
    UsuarioMailer.nuevo(Usuario.first)
  end

  # Preview this email at http://localhost:3000/rails/mailers/usuario_mailer/borrado
  def borrado
    UsuarioMailer.borrado(Usuario.first)
  end

end
