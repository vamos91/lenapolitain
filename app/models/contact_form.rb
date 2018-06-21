class ContactForm < ApplicationRecord
 #  validates :firstname, presence: true
 #  validates :lastname, presence: true
 # # validates :email, presence: true, email: true
 #  validates :content, presence: true



  after_create :send_notif

  def send_notif
    ContactFormMailer.contact_us(self).deliver_now
  end
end
