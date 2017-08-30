class AddIdPrincipalToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :idprincipal, :boolean, default:false
  end
end
