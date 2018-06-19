class Croisiere < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    mount_uploader :carte, PhotoUploader

end
