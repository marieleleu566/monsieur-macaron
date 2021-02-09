class Contact < MailForm::Base
  attribute :firstname, validate: true
  attribute :lastname, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i, allow_blank: true
  attributes :type, validate: ["General Questions & Messages", "Macaron Orders", "Events, Weddings, & Functions"]
  attributes :phone, validate: /\d[0-9]\)*\z/
  attribute :message
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Monsieur Macaron Contact Form",
      to: "leleu.a.marie@gmail.com",
      from: %("#{firstname}" <#{email}>)
    }
  end
end
