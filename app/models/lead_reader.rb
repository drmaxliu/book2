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

class LeadReader < ActiveRecord::Base
  attr_accessible :bio, :follower_count, :user_id

  
end
