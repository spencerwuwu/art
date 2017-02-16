class AddColumnsToPaymentConfigs < ActiveRecord::Migration[5.0]
  def change
    add_column :payment_configs, :description, :string
    add_column :payment_configs, :hash_key, :string
    add_column :payment_configs, :hash_iv, :string
    add_column :payment_configs, :merchant_id, :string
    add_column :payment_configs, :respond_type, :string
    add_column :payment_configs, :lang_type, :string
    add_column :payment_configs, :credit, :string
    add_column :payment_configs, :cvs, :string
    add_column :payment_configs, :barcode, :string
    add_column :payment_configs, :version, :string
  end
end
