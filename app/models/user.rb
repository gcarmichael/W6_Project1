class User < ActiveRecord::Base
  mount_uploader :avatar, UserAvatarUploader

  has_many :friends, :class_name => 'Friend', :foreign_key => 'friend_id'
  has_one :self, :class_name => 'Friend', :foreign_key => 'self_id'
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

end
