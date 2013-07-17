class AddStatQuestionToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :stat_question, :integer
  end
end
