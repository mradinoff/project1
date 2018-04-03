# == Schema Information
#
# Table name: accounts
#
#  id              :integer          not null, primary key
#  email           :text
#  display_name    :text
#  display_photo   :text
#  interests       :text
#  dob             :date
#  location        :text
#  hiking_ability  :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  comment_id      :integer
#

class Account < ApplicationRecord
  has_secure_password
  has_many :comments

  validates :email, :presence => true, :uniqueness => true
end
