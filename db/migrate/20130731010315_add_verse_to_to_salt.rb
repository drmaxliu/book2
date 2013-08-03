class AddVerseToToSalt < ActiveRecord::Migration
  def change
    add_column :salts, :verse_to, :integer
  end
end
