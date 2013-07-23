class AddUserIdToReadingHistory < ActiveRecord::Migration
  def change
    add_column :reading_histories, :user_id, :integer
  end
end
