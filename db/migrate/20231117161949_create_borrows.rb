class CreateBorrows < ActiveRecord::Migration[7.0]
  def change
    create_table :borrows do |t|
      t.string :name
      t.integer :studentid
      t.date :born
      t.integer :phone
      t.references :booklist, null: false, foreign_key: true
      t.date :borrow_at
      t.date :return_at

      t.timestamps
    end
  end
end
