class RemovePraiseFromComment < ActiveRecord::Migration
  def up
    remove_column :comments, :praise
  end

  def down
    add_column :comments, :praise, :string
  end
end
