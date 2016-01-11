class User < ActiveRecord::Base
  mount_uploader :avatar, UserAvatarUploader

  has_many :friendships, :class_name => 'Friend', :foreign_key => 'self_id'
  has_many :inverse_friendships, :class_name => 'Friend', :foreign_key => 'friend_id'
  has_many :photos
  has_many :comments
  has_many :messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?(role_to_compare)
    self.role.to_s = role_to_compare.to_s
  end

  def friendslist(id)
    # Find friendships where self_id = user.id
    @friends = self.friendships(self_id = id)
    # Find friendships where friend_id = user.id
    @inverse_friends = self.inverse_friendships(friend_id = id)
    # @all_friends =  concatenate @friends @inverse_friends
    @all_friends = [@friends, @inverse_friends]
    return @all_friends
  end

end
