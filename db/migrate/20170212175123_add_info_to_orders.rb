class AddInfoToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :name, :string
    add_column :orders, :mobile, :string
    add_column :orders, :email, :string
    add_column :orders, :school, :string
    add_column :orders, :department, :string
  end
end
