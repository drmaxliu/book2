class AddPraiseToComment < ActiveRecord::Migration
  def change
    add_column :comments, :praise, :integer
  end
end
