class ReservaMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reserva_mailer.new_reservation.subject
  # "rayssa@inventosdigitais.com.br"
  #
	def new_reservation(reserva)
	    @reserva = reserva
	    mail to: "leonardo.pbj@gmail.com", subject: "Novo pedido realizado! [Minions em Miniatura]"
	end
end
