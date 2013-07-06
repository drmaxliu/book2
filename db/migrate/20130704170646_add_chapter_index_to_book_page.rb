class AddChapterIndexToBookPage < ActiveRecord::Migration
  def change
    add_column :book_pages, :chapter_index, :integer
  end
end
