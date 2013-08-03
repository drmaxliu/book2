class AddVerseFromToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :verse_from, :integer
  end
end
