# == Schema Information
#
# Table name: reading_histories
#
#  id         :integer          not null, primary key
#  page_type  :string(255)
#  page_code  :string(255)
#  page_no    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  html_path  :string(255)
#

require 'spec_helper'

describe ReadingHistory do
  pending "add some examples to (or delete) #{__FILE__}"
end
