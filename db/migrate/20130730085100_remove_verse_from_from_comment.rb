class RemoveVerseFromFromComment < ActiveRecord::Migration
  def up
    remove_column :comments, :verse_from
  end

  def down
    add_column :comments, :verse_from, :integer
  end
end
