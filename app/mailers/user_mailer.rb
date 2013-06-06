class UserMailer < ActionMailer::Base
  default from: "ticket@example.com"

  def ticket_email(ticket)
    @ticket = ticket
    mail(to: "helpdesk@example.com", subject: "Ticket Content")
  end

  def receive(email)


  end

end
