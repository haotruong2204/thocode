# frozen_string_literal: true

class ActionAccountMailer < ApplicationMailer
  default from: "thocodehoctiengnhat@gmail.com"

  def send_email_welcome email
    mail(to: email, subject: "Chào mừng bạn đến với website luyenkanji.com")
  end

  def send_mail_upgrade email
    mail(to: email, subject: "Luyenkanji.com: Nâng cấp tài khoản thành công!")
  end
end
