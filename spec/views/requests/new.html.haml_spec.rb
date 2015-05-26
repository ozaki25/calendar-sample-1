require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      :name => "MyString",
      :department => "MyString",
      :status => "MyString",
      :controller => 1,
      :division => 1,
      :block => 1
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_name[name=?]", "request[name]"

      assert_select "input#request_department[name=?]", "request[department]"

      assert_select "input#request_status[name=?]", "request[status]"

      assert_select "input#request_controller[name=?]", "request[controller]"

      assert_select "input#request_division[name=?]", "request[division]"

      assert_select "input#request_block[name=?]", "request[block]"
    end
  end
end
