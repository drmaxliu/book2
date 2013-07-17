class RemoveTypeFromBookPage < ActiveRecord::Migration
  def up
    remove_column :book_pages, :type
  end

  def down
    add_column :book_pages, :type, :integer
  end
end
