class AddChapterNoToVerseBlock < ActiveRecord::Migration
  def change
    add_column :verse_blocks, :chapter_no, :integer
  end
end
