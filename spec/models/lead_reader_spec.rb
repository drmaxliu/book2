# == Schema Information
#
# Table name: lead_readers
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  bio            :text
#  follower_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe LeadReader do
  pending "add some examples to (or delete) #{__FILE__}"
end
