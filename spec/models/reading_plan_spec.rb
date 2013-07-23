# == Schema Information
#
# Table name: reading_plans
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  book_code   :string(255)
#  target_date :date
#  finish_date :date
#  read_record :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe ReadingPlan do
  pending "add some examples to (or delete) #{__FILE__}"
end
