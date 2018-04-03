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
#

class Comment < ApplicationRecord
  belongs_to :places 
end
