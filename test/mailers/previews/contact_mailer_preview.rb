# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/first_touch
  def first_touch
    contact = Contact.first
    ContactMailer.first_touch(contact)
  end

end
