class AddQuantidadeToReservas < ActiveRecord::Migration[5.1]
  def change
    add_column :reservas, :quantidade, :integer
  end
end
