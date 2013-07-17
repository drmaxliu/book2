# == Schema Information
#
# Table name: chapters
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :string(255)
#  book_id       :integer
#  chapter_no    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  static_link   :string(255)
#  stat_read     :integer
#  stat_summary  :integer
#  stat_app      :integer
#  stat_question :integer
#  stat_note     :integer
#  stat_finish   :integer
#

require 'spec_helper'

describe Chapter do
  pending "add some examples to (or delete) #{__FILE__}"
end
