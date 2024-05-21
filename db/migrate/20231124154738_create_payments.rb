class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :card_number
      t.string :expiration_date
      t.string :cvv
      # Thêm các trường khác cần thiết
      
      t.timestamps
    end
  end
end
