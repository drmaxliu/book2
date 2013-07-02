class RemoveDescriptinFromCollection < ActiveRecord::Migration
  def up
    remove_column :collections, :descriptin
  end

  def down
    add_column :collections, :descriptin, :string
  end
end
