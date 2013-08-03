# == Schema Information
#
# Table name: bible_notes
#
#  id           :integer          not null, primary key
#  chapter_id   :integer
#  verse_from   :integer
#  verse_to     :integer
#  note         :text
#  praise_count :integer
#  usage        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class BibleNote < ActiveRecord::Base
  attr_accessible :chapter_id, :note, :praise_count, :usage, :verse_from, :verse_to

  belongs_to :chapter
  validates :chapter_id, presence: true
end
