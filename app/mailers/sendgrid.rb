class SendGridMailer < ActionMailer::Base

  #
  #
  #
  #
  #
  def email
    mail(:to => to, :from => 'info@railsaccounting.herokuapp.com', :subject => subject) do |format|
      format.text { render :text => body }
      format.html { render :text => body }
    end
  end

end