class AddColToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :string
    add_column :books, :author, :string
    add_column :books, :price, :integer
  end
end
