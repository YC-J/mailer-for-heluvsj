module Contacts
  class Mailer < ApplicationMailer
    def contact_from(name, email, content)
      @name    = name
      @email   = email
      @content = content
      mail(
        subject: "HeluvsJ블로그에서 Contact가 도착했습니다.",
        return_path: 'no-reply@heluvsj.github.io',
        to: 'godluvsj@gmail.com'
      )
    end
  end
end
