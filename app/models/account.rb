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
#

class Account < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :accounts, through: :comments
  belongs_to :comment, optional: true
  belongs_to :places, optional: true

  validates :email, :presence => true, :uniqueness => true
end
