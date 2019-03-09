# Preview all emails at http://localhost:3000/rails/mailers/reserva_mailer
class ReservaMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reserva_mailer/new_reservation
  def new_reservation
    ReservaMailer.new_reservation
  end

end
