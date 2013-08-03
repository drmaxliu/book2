# == Schema Information
#
# Table name: reading_notes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  user_id    :integer
#  book_code  :string(255)
#  chapter_no :integer
#  verse_from :integer
#  verse_to   :integer
#  html_path  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe ReadingNote do
  pending "add some examples to (or delete) #{__FILE__}"
end
