class Friend < ActiveRecord::Base

  belongs_to :self, :class_name => 'User', :foreign_key => 'self_id'
  belongs_to :friend, :class_name => 'User', :foreign_key => 'friend_id'

end
