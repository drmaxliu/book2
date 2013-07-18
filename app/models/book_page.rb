# == Schema Information
#
# Table name: book_pages
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  book_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  chapter_index :integer
#  grp           :integer
#

class BookPage < ActiveRecord::Base
  attr_accessible :book_id, :description, :title, :grp, :chapter_index

  belongs_to :book
  validates :book_id, presence: true
end
