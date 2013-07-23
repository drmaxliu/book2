class CreateReadingPlans < ActiveRecord::Migration
  def change
    create_table :reading_plans do |t|
      t.integer :user_id
      t.string :book_code
      t.date :target_date
      t.date :finish_date
      t.text :read_record

      t.timestamps
    end
  end
end
