class AddDescriptionToVerse < ActiveRecord::Migration
  def change
    add_column :verses, :description, :text
  end
end
