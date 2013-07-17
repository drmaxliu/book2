class AddStaticLinkToBook < ActiveRecord::Migration
  def change
    add_column :books, :static_link, :string
  end
end
