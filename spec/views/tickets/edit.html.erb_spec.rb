require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :ticket => "MyString",
      :description => "MyString",
      :address => "MyString",
      :price => 1,
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_ticket[name=?]", "ticket[ticket]"

      assert_select "input#ticket_description[name=?]", "ticket[description]"

      assert_select "input#ticket_address[name=?]", "ticket[address]"

      assert_select "input#ticket_price[name=?]", "ticket[price]"

      assert_select "input#ticket_longitude[name=?]", "ticket[longitude]"

      assert_select "input#ticket_latitude[name=?]", "ticket[latitude]"
    end
  end
end
