class AddCashToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :cash, :boolean, default: false
  end
end
