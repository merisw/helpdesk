class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      UserMailer.ticket_email(@ticket).deliver
      flash[:notice] = "Ticket was successfully created."
      redirect_to @ticket
    else
      flash[:alert] = "Ticket has not been created."
      render action: "new"
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

end
