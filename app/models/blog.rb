class Blog < ApplicationRecord
  mount_uploader :image, PhotoUploader
  has_many :photo, :dependent => :destroy
end
