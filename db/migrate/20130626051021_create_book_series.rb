class CreateBookSeries < ActiveRecord::Migration
  def change
    create_table :book_series do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
