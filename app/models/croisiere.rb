class Croisiere < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    mount_uploader :carte, PhotoUploader
    has_many :reviews, :dependent => :destroy

   #  validates :photo, presence: true
   #  validates :description, presence: true
     validates :titre, presence: true
   #  validates :croisiere_destination, presence: true
   #  validates :tarif, :numericality => { :only_integer => true }
   # validates :duree, presence: true
    #validates_presence_of :duree, :message => 'entrez une durée'
end
