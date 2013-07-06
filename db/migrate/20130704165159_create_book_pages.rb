class CreateBookPages < ActiveRecord::Migration
  def change
    create_table :book_pages do |t|
      t.string :title
      t.text :description
      t.integer :book_id
      t.integer :type

      t.timestamps
    end
  end
end
