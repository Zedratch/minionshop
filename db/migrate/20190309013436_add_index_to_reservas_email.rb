class AddIndexToReservasEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :reservas, :email, unique: true
  end
end
