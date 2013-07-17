class AddGrpToComment < ActiveRecord::Migration
  def change
    add_column :comments, :grp, :integer
  end
end
