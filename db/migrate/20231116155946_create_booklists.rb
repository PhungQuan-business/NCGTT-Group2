class CreateBooklists < ActiveRecord::Migration[7.0]
  def change
    create_table :booklists do |t|
      t.string :tilte
      t.string :author
      t.string :publisher
      t.date :year
      t.boolean :available
      t.references :type, null: false, foreign_key: true
      t.string :bookid

      t.timestamps
    end
  end
end
