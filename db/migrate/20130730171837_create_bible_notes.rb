class CreateBibleNotes < ActiveRecord::Migration
  def change
    create_table :bible_notes do |t|
      t.integer :chapter_id
      t.integer :verse_from
      t.integer :verse_to
      t.text :note
      t.integer :praise_count
      t.integer :usage

      t.timestamps
    end
  end
end
