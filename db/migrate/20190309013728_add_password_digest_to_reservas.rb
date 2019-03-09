class AddPasswordDigestToReservas < ActiveRecord::Migration[5.1]
  def change
    add_column :reservas, :password_digest, :string
  end
end
