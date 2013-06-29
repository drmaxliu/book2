# == Schema Information
#
# Table name: collections
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  descriptin     :string(255)
#  book_series_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe Collection do
  pending "add some examples to (or delete) #{__FILE__}"
end
