class CreatePaymentConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_configs do |t|

      t.timestamps
    end
  end
end
