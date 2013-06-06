require 'spec_helper'

feature "Creating Tickets" do
  scenario "creating a ticket" do
    visit '/'
    click_link "New Ticket"
    fill_in "Name", with: "Concert"
    click_button "Create Ticket"
    page.should have_content("Ticket was successfully created.")
  end
end

