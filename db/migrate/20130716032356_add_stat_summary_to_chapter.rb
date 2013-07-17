class AddStatSummaryToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :stat_summary, :integer
  end
end
