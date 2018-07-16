class Croisiere < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    mount_uploader :carte, PhotoUploader
    has_many :reviews, :dependent => :destroy
end
