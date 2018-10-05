class Blog < ApplicationRecord
  mount_uploader :image, PhotoUploader
  mount_uploader :photos, PhotoUploader
  mount_uploader :illustration, PhotoUploader

end
