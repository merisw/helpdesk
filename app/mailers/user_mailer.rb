class UserMailer < ActionMailer::Base
  default from: "ticket@example.com"

  def ticket_email(ticket)
    @ticket = ticket
    mail(to: "helpdesk@example.com", subject: ticket.name)
  end

  def receive(email)
    ticket = Ticket.find_by_name(email.subject)
    ticket.response = email.text
    ticket.save
  end

end
