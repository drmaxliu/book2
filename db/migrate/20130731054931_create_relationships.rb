class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :lead_reader_id

      t.timestamps
    end
    add_index :relationships, :follower_id
    add_index :relationships, :lead_reader_id
    add_index :relationships, [:follower_id, :lead_reader_id], unique: true
  end
end
