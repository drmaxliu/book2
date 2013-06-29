class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.integer :verse_no
      t.integer :chapter_id
      t.string :content_kjv
      t.string :content_cuvs
      t.string :content_cuvt
      t.string :content_revs
      t.string :content_revt

      t.timestamps
    end
  end
end
