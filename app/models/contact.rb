class Contact < MailForm::Base
  attribute :firstname, validate: true
  attribute :lastname, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :email2, validate: /\A[^@\s]+@[^@\s]+\z/i, allow_blank: true
  attributes :type
  attributes :phone, validate: /\d[0-9]\)*\z/
  attribute :message
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Monsieur Macaron Contact Form",
      to: "macaron.monsieur@gmail.com",
      from: %("#{firstname}" <#{email}>),
    }
  end
end
