# == Schema Information
#
# Table name: verses
#
#  id           :integer          not null, primary key
#  verse_no     :integer
#  chapter_id   :integer
#  content_kjv  :string(255)
#  content_cuvs :string(255)
#  content_cuvt :string(255)
#  content_revs :string(255)
#  content_revt :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string(255)
#  description  :text
#

class Verse < ActiveRecord::Base
  attr_accessible :chapter_id, :content_cuvs, :content_cuvt, :content_kjv, :content_revs,
                  :content_revt, :verse_no, :title, :description

  belongs_to :chapter
  validates :chapter_id, presence: true

end
