class AddHtmlPathToReadingHistory < ActiveRecord::Migration
  def change
    add_column :reading_histories, :html_path, :string
  end
end
