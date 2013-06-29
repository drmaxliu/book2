# == Schema Information
#
# Table name: books
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :string(255)
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :collection_id, :description, :title

  has_many :chapters
  belongs_to :collection
end
