require 'rails_helper'

RSpec.describe "licenses/new", type: :view do
  before(:each) do
    assign(:license, License.new(
      :name => "MyString"
    ))
  end

  it "renders new license form" do
    render

    assert_select "form[action=?][method=?]", licenses_path, "post" do

      assert_select "input#license_name[name=?]", "license[name]"
    end
  end
end
