class NotificacionMailer < ApplicationMailer
  def actualizacion(agente)
    @agente = agente

    mail to: agente.correo
  end

  def nuevo(agente)
    @agente = agente

    mail to: agente.correo
  end

  def borrado(agente)
    @agente = agente

    mail to: agente.correo
  end
end
