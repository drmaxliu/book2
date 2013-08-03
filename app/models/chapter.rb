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
  	:stat_read, :stat_finish, :stat_summary, :stat_note, :stat_question, :stat_app,
  	:verse_from, :verse_to, :content

  has_many :verses, dependent: :destroy
  belongs_to :book
  validates :book_id, presence: true

  # verse_blocks: for cross references
  # bible_notes: for commentary
  has_many :verse_blocks, :as => :taggable, dependent: :destroy
  has_many :bible_notes, dependent: :destroy
  has_many :lights, :as => :taggable, dependent: :destroy
end
