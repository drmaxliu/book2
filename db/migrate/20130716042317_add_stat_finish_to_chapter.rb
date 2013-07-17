class AddStatFinishToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :stat_finish, :integer
  end
end
