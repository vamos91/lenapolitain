class ContactForm < ApplicationRecord
  # validates :firstname, presence: true
  # validates :lastname, presence: true
  # validates :content, presence: true
  # validates :date_depart, presence: true
  # validates :nb_enfant, presence: true
  # validates :nb_adulte, presence: true

 # validates :email, presence: true, email: true

  after_create :send_notif

  def send_notif
    ContactFormMailer.contact_us(self).deliver_now
  end
end
