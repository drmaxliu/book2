# == Schema Information
#
# Table name: reading_plans
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  book_code   :string(255)
#  target_date :date
#  finish_date :date
#  read_record :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ReadingPlan < ActiveRecord::Base
  attr_accessible :book_code, :finish_date, :read_record, :target_date, :user_id

  belongs_to :user
  validates :user_id, presence: true
end
