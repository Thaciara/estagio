class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name, null:false
      t.string :logo, null:false

      t.timestamps
    end
  end
end
