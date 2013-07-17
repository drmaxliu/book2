# == Schema Information
#
# Table name: books
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  description   :text
#  book_code     :string(255)
#  chinese_code  :string(255)
#  name          :string(255)
#  logo          :string(255)
#  static_link   :string(255)
#

class Book < ActiveRecord::Base
  attr_accessible :collection_id, :description, :title, :book_code, :chinese_code, :name, :logo, :static_link

  has_many :chapters, dependent: :destroy
  has_many :book_pages, dependent: :destroy
  belongs_to :collection
  validates :collection_id, presence: true
end
