class RemoveBookCodeFromVerseBlock < ActiveRecord::Migration
  def up
    remove_column :verse_blocks, :book_code
  end

  def down
    add_column :verse_blocks, :book_code, :string
  end
end
