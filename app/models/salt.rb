# == Schema Information
#
# Table name: salts
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  book_code  :string(255)
#  chapter_no :integer
#  verse_from :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  verse_to   :integer
#

class Salt < ActiveRecord::Base
  attr_accessible :book_code, :chapter_no, :content, :group_id, :title, :user_id, :verse_from

  belongs_to :group_member
  validates :content, presence: true
end
