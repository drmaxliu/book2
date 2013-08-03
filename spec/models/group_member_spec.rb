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

require 'spec_helper'

describe GroupMember do
  pending "add some examples to (or delete) #{__FILE__}"
end
