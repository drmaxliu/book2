class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.string :description
      t.boolean :active
      t.date :last_active

      t.timestamps
    end
  end
end
