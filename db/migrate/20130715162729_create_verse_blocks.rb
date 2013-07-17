class CreateVerseBlocks < ActiveRecord::Migration
  def change
    create_table :verse_blocks do |t|
      t.string :title
      t.integer :book_code
      t.integer :verse_from
      t.integer :verse_to
      t.string :taggable_type
      t.integer :taggable_id

      t.timestamps
    end
  end
end
