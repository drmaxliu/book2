class AddContentToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :content, :text
  end
end
