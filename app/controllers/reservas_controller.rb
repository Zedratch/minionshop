class ReservasController < ApplicationController
  def new
    @reserva = Reserva.new
  end
  
  def create
    @reserva = Reserva.new(reserva_params)
    if @reserva.save
      ReservaMailer.new_reservation(@reserva).deliver_now
      flash[:info] = "Pedido de Reserva efetuado com sucesso!"
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = "Opa! Algo deu errado. =("
      redirect_back(fallback_location: root_path)
    end
  end
  
  private

    def reserva_params
      params.require(:reserva).permit(:nome, :email, :telefone,
                                    :cpf, :quantidade,
                                    :password, :password_confirmation)
    end
  
end
