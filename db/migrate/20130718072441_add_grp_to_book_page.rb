class AddGrpToBookPage < ActiveRecord::Migration
  def change
    add_column :book_pages, :grp, :integer
  end
end
