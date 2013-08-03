class CreateCritics < ActiveRecord::Migration
  def change
    create_table :critics do |t|
      t.string :title
      t.string :category
      t.text :content
      t.integer :user_id
      t.string :html_path

      t.timestamps
    end
  end
end
