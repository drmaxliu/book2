# == Schema Information
#
# Table name: lights
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  content       :text
#  book_code     :string(255)
#  chapter_no    :integer
#  verse_from    :integer
#  verse_to      :integer
#  praise_count  :integer
#  taggable_id   :integer
#  taggable_type :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  usage         :integer
#
#  taggable_type: chapter or theme page

class Light < ActiveRecord::Base
  attr_accessible :book_code, :chapter_no, :content, :praise_count, 
  	:taggable_id, :taggable_type, :title, :verse_from, :verse_to, 
  	:user_id, :usage

  has_many :comments, dependent: :destroy

  belongs_to :taggable, :polymorphic => true
  validates :taggable_type, presence: true
end
