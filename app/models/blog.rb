class Blog < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
