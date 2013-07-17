# == Schema Information
#
# Table name: verse_blocks
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  verse_from    :integer
#  verse_to      :integer
#  taggable_type :string(255)
#  taggable_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  chapter_no    :integer
#  book_code     :string(255)
#

require 'spec_helper'

describe VerseBlock do
  pending "add some examples to (or delete) #{__FILE__}"
end
