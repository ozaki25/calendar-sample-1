require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :name => "Name",
        :department => "Department",
        :status => "Status",
        :controller => 1,
        :division => 2,
        :block => 3
      ),
      Request.create!(
        :name => "Name",
        :department => "Department",
        :status => "Status",
        :controller => 1,
        :division => 2,
        :block => 3
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
