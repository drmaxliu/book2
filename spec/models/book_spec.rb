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
#  book_code     :string(255)
#  chinese_code  :string(255)
#  name          :string(255)
#  logo          :string(255)
#  static_link   :string(255)
#

require 'spec_helper'

describe Book do
  pending "add some examples to (or delete) #{__FILE__}"
end
