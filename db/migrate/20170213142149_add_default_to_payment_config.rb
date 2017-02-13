class AddDefaultToPaymentConfig < ActiveRecord::Migration[5.0]
  def change
    change_column :payment_configs, :respond_type, :string, :default => 'JSON'
    change_column :payment_configs, :lang_type, :string, :default => 'zh-tw'
    add_column :payment_configs, :login_type, :string, :default => '0'
    change_column :payment_configs, :credit, :string, :default => '1'
    change_column :payment_configs, :cvs, :string, :default => '1'
    change_column :payment_configs, :barcode, :string, :default => '1'
    change_column :payment_configs, :version, :string, :default => '1.2'
  end
end
