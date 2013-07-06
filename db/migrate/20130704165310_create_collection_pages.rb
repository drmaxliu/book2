class CreateCollectionPages < ActiveRecord::Migration
  def change
    create_table :collection_pages do |t|
      t.string :title
      t.text :description
      t.integer :collection_id
      t.integer :type

      t.timestamps
    end
  end
end
