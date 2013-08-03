# == Schema Information
#
# Table name: critics
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  category   :string(255)
#  content    :text
#  user_id    :integer
#  html_path  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Critic < ActiveRecord::Base
  attr_accessible :category, :content, :html_path, :title, :user_id

end
