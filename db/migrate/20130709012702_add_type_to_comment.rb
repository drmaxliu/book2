class AddTypeToComment < ActiveRecord::Migration
  def change
    add_column :comments, :type, :integer
  end
end
