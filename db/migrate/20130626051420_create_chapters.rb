class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :description
      t.integer :book_id
      t.integer :chapter_no

      t.timestamps
    end
  end
end
