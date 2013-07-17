# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  chapter_id :integer
#  verse_from :integer
#  verse_to   :integer
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  grp        :integer
#

class Comment < ActiveRecord::Base
  attr_accessible :chapter_id, :note, :verse_from, :verse_to, :grp

  belongs_to :chapter
  validates :chapter_id, presence: true
end
