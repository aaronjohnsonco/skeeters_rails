class RegistrationMailer < ActionMailer::Base
  def registration_email(candidate)
  	@candidate = candidate
  	mail(to: 'skeetersballclub@gmail.com', subject: 'Tryout Registration', from: @candidate.contact1_email)
  end

  def registration_confirmation_email(candidate)
  	@candidate = candidate
  	mail(to: @candidate.contact1_email, subject: 'Tryout Registration Confirmation', from: 'skeetersballclub@gmail.com')
  end

end
