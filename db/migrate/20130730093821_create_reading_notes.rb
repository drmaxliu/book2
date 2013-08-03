class CreateReadingNotes < ActiveRecord::Migration
  def change
    create_table :reading_notes do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :book_code
      t.integer :chapter_no
      t.integer :verse_from
      t.integer :verse_to
      t.string :html_path

      t.timestamps
    end
  end
end
