class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_when_update.subject
  #
  def send_when_update(contact)
    @content = contact.content
    @email = contact.email
    @user = contact.name
    @age = contact.age
    mail to:      'otoka.japanesedrum@gmail.com',
         subject: "#{@user}からのお問い合わせ"
  end
  def user_mail(contact)
    @content = contact.content
    @email = contact.email
    @user = contact.name
    @age
    mail to: @email,
         subject: "お問い合わせ確認メール"
  end
end
