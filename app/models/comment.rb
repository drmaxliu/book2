# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  light_id   :integer
#  user_id    :integer
#  praise     :integer
#  voted      :boolean
#

class Comment < ActiveRecord::Base
  attr_accessible :note, :user_id, :light_id, :praise, :voted

  belongs_to :light
  
  validates :light_id, presence: true
  validates :note,  presence: true
  validate :user_id, presence: true
end
