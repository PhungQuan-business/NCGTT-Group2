class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :orderid
      t.references :customer, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.datetime :orderdate
      t.references :paymentmethod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
