# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  chapter_id :integer
#  verse_from :integer
#  verse_to   :integer
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  grp        :integer
#

require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
