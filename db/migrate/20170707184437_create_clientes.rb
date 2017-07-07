class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nome, null:false, limit:100
      t.string :logo, null:false

      t.timestamps
    end
  end
end
