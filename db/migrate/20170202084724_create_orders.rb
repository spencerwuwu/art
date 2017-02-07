class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :state
      t.references :product, foreign_key: true
      t.string :type
      t.string :result

      t.timestamps
    end
  end
end
