# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  title       :text
#  length      :text
#  description :text
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Blog < ApplicationRecord
end
