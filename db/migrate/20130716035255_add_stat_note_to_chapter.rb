class AddStatNoteToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :stat_note, :integer
  end
end
