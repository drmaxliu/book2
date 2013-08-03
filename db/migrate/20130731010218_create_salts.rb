class CreateSalts < ActiveRecord::Migration
  def change
    create_table :salts do |t|
      t.integer :group_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :book_code
      t.integer :chapter_no
      t.integer :verse_from

      t.timestamps
    end
  end
end
