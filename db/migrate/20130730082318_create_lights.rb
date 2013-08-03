class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.string :title
      t.text :content
      t.string :book_code
      t.integer :chapter_no
      t.integer :verse_from
      t.integer :verse_to
      t.integer :praise_count
      t.integer :taggable_id
      t.string :taggable_type

      t.timestamps
    end
  end
end
