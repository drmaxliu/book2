class CreateReadingHistories < ActiveRecord::Migration
  def change
    create_table :reading_histories do |t|
      t.string :page_type
      t.string :page_code
      t.integer :page_no

      t.timestamps
    end
  end
end
