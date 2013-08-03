# == Schema Information
#
# Table name: lights
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  content       :text
#  book_code     :string(255)
#  chapter_no    :integer
#  verse_from    :integer
#  verse_to      :integer
#  praise_count  :integer
#  taggable_id   :integer
#  taggable_type :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  usage         :integer
#

require 'spec_helper'

describe Light do
  pending "add some examples to (or delete) #{__FILE__}"
end
