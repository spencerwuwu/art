class AddMessageAndStatusToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :message, :string
    add_column :orders, :status, :string
  end
end
