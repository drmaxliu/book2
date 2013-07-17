class AddGrpToCollectionPage < ActiveRecord::Migration
  def change
    add_column :collection_pages, :grp, :integer
  end
end
