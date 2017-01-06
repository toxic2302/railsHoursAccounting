class EmailController < ApplicationController

  def index

  end

  # sending email
  def sending
    to = params[:toAddress]
    subject = params[:subject]
    body = params[:body]

    begin
      response = SendGridMailer.email(to, subject, body).deliver
      flash[:message] = "Your email was successfully sent."
      flash[:class] = 'alert-success'
    rescue Exception => e
      flash[:message] = e.message
      flahs[:class] = 'alert-error'
    end

    redirect_to root_url
  end
end
