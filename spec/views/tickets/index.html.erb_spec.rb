require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :ticket => "Ticket",
        :description => "Description",
        :address => "Address",
        :price => 1,
        :longitude => 1.5,
        :latitude => 1.5
      ),
      Ticket.create!(
        :ticket => "Ticket",
        :description => "Description",
        :address => "Address",
        :price => 1,
        :longitude => 1.5,
        :latitude => 1.5
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "Ticket".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
