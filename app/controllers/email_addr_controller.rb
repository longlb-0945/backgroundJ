class EmailAddrController < ApplicationController
  def new
    @email_addr = EmailAddr.new
  end

  def create
    if @email_addr.save
      flash[:success] = "order_create_suc"
      redirect_to root_path
      SendMailJob.perform_later @email_addr
    else
      flash[:danger] = "order_create_fail"
      render :new
    end
  end
end
