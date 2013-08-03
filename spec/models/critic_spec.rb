# == Schema Information
#
# Table name: critics
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  category   :string(255)
#  content    :text
#  user_id    :integer
#  html_path  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Critic do
  pending "add some examples to (or delete) #{__FILE__}"
end
