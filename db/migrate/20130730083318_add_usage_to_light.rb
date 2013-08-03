class AddUsageToLight < ActiveRecord::Migration
  def change
    add_column :lights, :usage, :integer
  end
end
