class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.integer :user_id
      t.boolean :joined
      t.date :join_date
      t.date :exit_date
      t.boolean :group_leader

      t.timestamps
    end
  end
end
