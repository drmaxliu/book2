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
#  logo           :string(255)
#

class Collection < ActiveRecord::Base
  attr_accessible :book_series_id, :description, :title, :logo

  has_many :books, dependent: :destroy
  has_many :collection_pages, dependent: :destroy
  belongs_to :book_series
  validates :book_series_id, presence: true
end
