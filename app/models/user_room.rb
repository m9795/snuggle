# == Schema Information
#
# Table name: user_rooms
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_user_rooms_on_room_id  (room_id)
#  index_user_rooms_on_user_id  (user_id)
#
# Foreign Keys
#
#  room_id  (room_id => rooms.id)
#  user_id  (user_id => users.id)
#
class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room
end
