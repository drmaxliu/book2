class AddVerseToToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :verse_to, :integer
  end
end
