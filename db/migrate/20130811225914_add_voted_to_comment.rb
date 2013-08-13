class AddVotedToComment < ActiveRecord::Migration
  def change
    add_column :comments, :voted, :boolean
  end
end
