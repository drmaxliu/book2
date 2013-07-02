# == Schema Information
#
# Table name: collections
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  book_series_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  description    :text
#

class Collection < ActiveRecord::Base
  attr_accessible :book_series_id, :description, :title

  has_many :books
  belongs_to :book_series
end
