# == Schema Information
#
# Table name: book_series
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class BookSeries < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :collections, dependent: :destroy
end
