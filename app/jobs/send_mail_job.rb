class SendMailJob < ApplicationJob
  queue_as :default

  def perform(mail_addr)
    # Do something later
    UserMailer.bgjobmailer(mail_addr).deliver_now
  end
end
