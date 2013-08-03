# == Schema Information
#
# Table name: salts
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  book_code  :string(255)
#  chapter_no :integer
#  verse_from :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  verse_to   :integer
#

require 'spec_helper'

describe Salt do
  pending "add some examples to (or delete) #{__FILE__}"
end
