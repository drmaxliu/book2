class RemoveGrpFromComment < ActiveRecord::Migration
  def up
    remove_column :comments, :grp
  end

  def down
    add_column :comments, :grp, :integer
  end
end
