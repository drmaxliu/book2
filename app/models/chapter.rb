# == Schema Information
#
# Table name: chapters
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :string(255)
#  book_id       :integer
#  chapter_no    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  static_link   :string(255)
#  stat_read     :integer
#  stat_summary  :integer
#  stat_app      :integer
#  stat_question :integer
#  stat_note     :integer
#  stat_finish   :integer
#

class Chapter < ActiveRecord::Base
  attr_accessible :book_id, :chapter_no, :description, :title, :static_link,
  	:stat_read, :stat_finish, :stat_summary, :stat_note, :stat_question, :stat_app

  has_many :verses, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :book
  validates :book_id, presence: true
  has_many :verse_blocks, :as => :taggable, dependent: :destroy
end
