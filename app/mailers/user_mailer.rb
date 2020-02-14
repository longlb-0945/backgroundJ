class UserMailer < ApplicationMailer
  def bgjobmailer mail_addr
    @mail_addr = mail_addr
    mail to: mail_addr.addr, subject: "This is testing mail #{mail_addr.stt} from background Job"
  end
end
