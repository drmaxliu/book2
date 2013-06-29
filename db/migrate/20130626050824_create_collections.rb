class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.string :descriptin
      t.integer :book_series_id

      t.timestamps
    end
  end
end
