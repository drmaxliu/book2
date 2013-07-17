class AddStatReadToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :stat_read, :integer
  end
end
