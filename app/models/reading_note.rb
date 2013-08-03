# == Schema Information
#
# Table name: reading_notes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  user_id    :integer
#  book_code  :string(255)
#  chapter_no :integer
#  verse_from :integer
#  verse_to   :integer
#  html_path  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ReadingNote < ActiveRecord::Base
  attr_accessible :book_code, :chapter_no, :content, :html_path, :title, :user_id, :verse_from, :verse_to

  belongs_to :user
  validates :user_id, presence: true

  default_scope order: 'reading_notes.created_at DESC'

end
