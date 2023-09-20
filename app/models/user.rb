# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  goals_count     :integer
#  password_digest :string
#  profile_picture :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
end
