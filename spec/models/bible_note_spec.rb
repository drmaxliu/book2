# == Schema Information
#
# Table name: bible_notes
#
#  id           :integer          not null, primary key
#  chapter_id   :integer
#  verse_from   :integer
#  verse_to     :integer
#  note         :text
#  praise_count :integer
#  usage        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe BibleNote do
  pending "add some examples to (or delete) #{__FILE__}"
end
