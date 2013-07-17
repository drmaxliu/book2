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

class CollectionPage < ActiveRecord::Base
  attr_accessible :collection_id, :description, :title, :grp

  belongs_to :collection
  validates :collection_id, presence: true
end
