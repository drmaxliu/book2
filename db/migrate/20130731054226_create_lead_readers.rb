class CreateLeadReaders < ActiveRecord::Migration
  def change
    create_table :lead_readers do |t|
      t.integer :user_id
      t.text :bio
      t.integer :follower_count

      t.timestamps
    end
  end
end
