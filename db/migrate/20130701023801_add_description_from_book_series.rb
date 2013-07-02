class AddDescriptionFromBookSeries < ActiveRecord::Migration
  def change
    add_column :book_series, :description, :text
  end
end
