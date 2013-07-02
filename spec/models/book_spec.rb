# == Schema Information
#
# Table name: books
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  description   :text
#

require 'spec_helper'

describe Book do
  pending "add some examples to (or delete) #{__FILE__}"
end
