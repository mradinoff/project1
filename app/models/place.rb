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
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord
  has_many :comments
  has_many :accounts, through: :comments
  belongs_to :comment, optional: true
  belongs_to :accounts, optional: true
end
