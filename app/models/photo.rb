class Photo < ActiveRecord::Base
  mount_uploader :image, PhotoImageUploader

  belongs_to :user
  has_many :comments
  has_many :likes

end
