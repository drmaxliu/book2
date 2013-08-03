# == Schema Information
#
# Table name: relationships
#
#  id             :integer          not null, primary key
#  follower_id    :integer
#  lead_reader_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Relationship < ActiveRecord::Base
  attr_accessible :follower_id, :lead_reader_id

  belongs_to :follower, class_name: "User"
  belongs_to :lead_reader

  validates :follower_id, presence: true
  validates :lead_reader_id, presence: true
end
