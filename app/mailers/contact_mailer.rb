class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.first_touch.subject
  #
  def first_touch(contact)
    @contact = contact

    mail( to: @contact.email, subject:"Hi #{@contact.first_name}")
  end
end
