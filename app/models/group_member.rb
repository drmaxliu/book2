# == Schema Information
#
# Table name: group_members
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  joined       :boolean
#  join_date    :date
#  exit_date    :date
#  group_leader :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  group_id     :integer
#

class GroupMember < ActiveRecord::Base
  attr_accessible :exit_date, :group_leader, :join_date, :joined, :user_id

  belongs_to :group
  validates :group_id, presence: true

  has_many :salts, dependent: :destroy
end
