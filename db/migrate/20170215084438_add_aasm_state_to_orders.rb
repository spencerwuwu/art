class AddAasmStateToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :aasm_state, :string, :default => 'created'
  end
end
