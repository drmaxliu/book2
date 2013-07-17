# == Schema Information
#
# Table name: verses
#
#  id           :integer          not null, primary key
#  verse_no     :integer
#  chapter_id   :integer
#  content_kjv  :string(255)
#  content_cuvs :string(255)
#  content_cuvt :string(255)
#  content_revs :string(255)
#  content_revt :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string(255)
#  description  :text
#

require 'spec_helper'

describe Verse do
  pending "add some examples to (or delete) #{__FILE__}"
end
