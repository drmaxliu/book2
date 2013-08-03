# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  active      :boolean
#  last_active :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ActiveRecord::Base
  attr_accessible :active, :description, :last_active, :title

  has_many :group_memebers, dependent: :destroy
  validates :title, presence: true
  validates_uniqueness_of :title, :case_sensitive => false, :message => "Has already been taken, try again!"
end
