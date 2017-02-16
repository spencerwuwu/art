class AddApiToPaymentConfig < ActiveRecord::Migration[5.0]
  def change
    add_column :payment_configs, :production_api, :string, :default => 'https://api.spgateway.com/MPG/mpg_gateway'
    add_column :payment_configs, :staging_api, :string, :default => 'https://capi.spgateway.com/MPG/mpg_gateway'
  end
end
