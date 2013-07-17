class AddBookCodeToVerseBlock < ActiveRecord::Migration
  def change
    add_column :verse_blocks, :book_code, :string
  end
end
