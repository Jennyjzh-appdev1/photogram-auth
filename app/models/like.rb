# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  photo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
    
    validates :user_id, presence:true
    validates :photo_id, presence:true
    
    validates :user_id, uniqueness: 
    {
    scope: :photo_id,
    message: "should be unique with respect to photo"
    }
end
