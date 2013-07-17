# == Schema Information
#
# Table name: verse_blocks
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  verse_from    :integer
#  verse_to      :integer
#  taggable_type :string(255)
#  taggable_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  chapter_no    :integer
#  book_code     :string(255)
#

class VerseBlock < ActiveRecord::Base
  attr_accessible :book_code, :taggable_id, :taggable_type, :title, :verse_from, :verse_to, :chapter_no

  belongs_to :taggable, :polymorphic => true
  validates :taggable_type, presence: true
end
