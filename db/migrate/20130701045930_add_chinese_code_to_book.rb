class AddChineseCodeToBook < ActiveRecord::Migration
  def change
    add_column :books, :chinese_code, :string
  end
end
