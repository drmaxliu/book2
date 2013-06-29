# == Schema Information
#
# Table name: chapters
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  book_id     :integer
#  chapter_no  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Chapter < ActiveRecord::Base
  attr_accessible :book_id, :chapter_no, :description, :title

  has_many :verses
  belongs_to :book
end
