require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :name => "MyString",
      :department => "MyString",
      :status => "MyString",
      :controller => 1,
      :division => 1,
      :block => 1
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_name[name=?]", "request[name]"

      assert_select "input#request_department[name=?]", "request[department]"

      assert_select "input#request_status[name=?]", "request[status]"

      assert_select "input#request_controller[name=?]", "request[controller]"

      assert_select "input#request_division[name=?]", "request[division]"

      assert_select "input#request_block[name=?]", "request[block]"
    end
  end
end
