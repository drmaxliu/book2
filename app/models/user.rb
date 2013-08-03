# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  has_many :reading_plans, dependent: :destroy
  has_many :reading_histories, dependent: :destroy

  has_many :reading_notes, dependent: :destroy

  # for a user to follow a lead_reader through relationships
  # user.lead_readers will give a list of all its lead readers
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :lead_readers, through: :relationships, source: :lead_leader

  # a reverse relationship
  # user.followers will give a list of all its followers
  has_many :reverse_relationships, foreign_key: "lead_reader_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

end
