class AddLogoToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :logo, :string
  end
end
