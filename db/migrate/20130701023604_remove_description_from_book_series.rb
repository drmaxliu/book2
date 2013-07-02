class RemoveDescriptionFromBookSeries < ActiveRecord::Migration
  def up
    remove_column :book_series, :description
  end

  def down
    add_column :book_series, :description, :string
  end
end
