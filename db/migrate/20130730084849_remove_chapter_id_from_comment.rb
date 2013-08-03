class RemoveChapterIdFromComment < ActiveRecord::Migration
  def up
    remove_column :comments, :chapter_id
  end

  def down
    add_column :comments, :chapter_id, :integer
  end
end
