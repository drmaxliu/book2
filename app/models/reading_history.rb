# == Schema Information
#
# Table name: reading_histories
#
#  id         :integer          not null, primary key
#  page_type  :string(255)
#  page_code  :string(255)
#  page_no    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  html_path  :string(255)
#

class ReadingHistory < ActiveRecord::Base
  attr_accessible :html_path, :page_code, :page_no, :page_type, :user_id

  belongs_to :user
  validates :user_id, presence: true
end
