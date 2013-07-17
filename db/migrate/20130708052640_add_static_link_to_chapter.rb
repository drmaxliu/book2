class AddStaticLinkToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :static_link, :string
  end
end
