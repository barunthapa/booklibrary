class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :isbn
      t.float :price

      t.timestamps
    end
  end
end
