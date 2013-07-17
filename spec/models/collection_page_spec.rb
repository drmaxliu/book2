# == Schema Information
#
# Table name: collection_pages
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  grp           :integer
#

require 'spec_helper'

describe CollectionPage do
  pending "add some examples to (or delete) #{__FILE__}"
end
