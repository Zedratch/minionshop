class CreateReservas < ActiveRecord::Migration[5.1]
  def change
    create_table :reservas do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :cpf

      t.timestamps
    end
  end
end