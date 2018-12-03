# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :string
#  image      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Photo < ApplicationRecord
    
    has_many :comments
    has_many :likes, :dependent => :destroy
    has_many :fans, :through => :likes, :source => :user
    
    validates :user_id, presence: true
    
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
    
    
end
