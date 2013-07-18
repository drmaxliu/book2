# == Schema Information
#
# Table name: book_pages
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  book_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  chapter_index :integer
#  grp           :integer
#

require 'spec_helper'

describe BookPage do
  pending "add some examples to (or delete) #{__FILE__}"
end
