class AddTitleToVerse < ActiveRecord::Migration
  def change
    add_column :verses, :title, :string
  end
end
