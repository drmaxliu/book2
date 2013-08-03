class AddLightIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :light_id, :integer
  end
end
