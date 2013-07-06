class AddLogoToBook < ActiveRecord::Migration
  def change
    add_column :books, :logo, :string
  end
end
