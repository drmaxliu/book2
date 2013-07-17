class RemoveTypeFromCollectionPage < ActiveRecord::Migration
  def up
    remove_column :collection_pages, :type
  end

  def down
    add_column :collection_pages, :type, :integer
  end
end
