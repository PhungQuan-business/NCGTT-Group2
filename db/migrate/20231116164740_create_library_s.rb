class CreateLibraryS < ActiveRecord::Migration[7.0]
  def change
    create_table :library_s do |t|

      t.timestamps
    end
  end
end
