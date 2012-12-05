class AddNoOfBooksToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :no_of_books, :integer
  end
end
