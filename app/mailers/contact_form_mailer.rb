class ContactFormMailer < ApplicationMailer

   def contact_us(contact_form)
    # @content = contact_form.content
    # @name = contact_form.name
    # @email = contact_form.email
    @contact_form = contact_form
    mail(
      to: 'sailandkite83@gmail.com',
      #body: @contact_form.content,
      subject: "Nouveau message de #{@contact_form.lastname || @contact_form.email}"
    )
  end
end
