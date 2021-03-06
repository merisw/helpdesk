class UserMailer < ActionMailer::Base
  default from: "ticket@example.com"

  def ticket_email(ticket)
    @ticket = ticket
    mail(to: "helpdesk@example.com", subject: ticket.name)
  end

end
