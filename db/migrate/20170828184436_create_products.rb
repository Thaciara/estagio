class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null:false
      t.text :description, null:false
      t.string :image
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
