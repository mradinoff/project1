# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  date       :text
#  content    :text
#  blog       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  place_id   :integer
#  account_id :integer
#

class Comment < ApplicationRecord
  belongs_to :place
  belongs_to :account
end
