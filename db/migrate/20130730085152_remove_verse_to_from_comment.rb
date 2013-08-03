class RemoveVerseToFromComment < ActiveRecord::Migration
  def up
    remove_column :comments, :verse_to
  end

  def down
    add_column :comments, :verse_to, :integer
  end
end
