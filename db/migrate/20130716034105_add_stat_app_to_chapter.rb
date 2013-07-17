class AddStatAppToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :stat_app, :integer
  end
end
