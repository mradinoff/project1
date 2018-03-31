# == Schema Information
#
# Table name: avatars
#
#  id             :integer          not null, primary key
#  display_name   :text
#  display_photo  :text
#  interests      :text
#  dob            :date
#  location       :text
#  hiking_ability :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Avatar < ApplicationRecord
end
