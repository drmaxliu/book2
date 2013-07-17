class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :chapter_id
      t.integer :verse_from
      t.integer :verse_to
      t.text :note

      t.timestamps
    end
  end
end
