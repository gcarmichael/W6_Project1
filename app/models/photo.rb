class Photo < ActiveRecord::Base
  mount_uploader :image, PhotoImageUploader
end
