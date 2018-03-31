# == Schema Information
#
# Table name: accounts
#
#  id              :integer          not null, primary key
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class Account < ApplicationRecord
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
end
