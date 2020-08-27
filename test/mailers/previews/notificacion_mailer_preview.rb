# Preview all emails at http://localhost:3000/rails/mailers/notificacion_mailer
class NotificacionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notificacion_mailer/actualizacion
  def actualizacion
    NotificacionMailer.actualizacion Agente.first
  end

  # Preview this email at http://localhost:3000/rails/mailers/notificacion_mailer/nuevo
  def nuevo
    NotificacionMailer.nuevo Agente.first
  end

  # Preview this email at http://localhost:3000/rails/mailers/notificacion_mailer/borrado
  def borrado
    NotificacionMailer.borrado Agente.first
  end

end
