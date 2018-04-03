# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :text
#  area       :text
#  length     :text
#  distance   :text
#  difficulty :text
#  one_way    :text
#  fee        :text
#  access     :text
#  conditions :text
#  safety     :text
#  blog_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord
  has_many :comments
end
