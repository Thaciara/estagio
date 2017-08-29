class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descrição
      t.string :imagem

      t.timestamps
    end
  end
end
