require 'rails_helper'

RSpec.describe "licenses/edit", type: :view do
  before(:each) do
    @license = assign(:license, License.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit license form" do
    render

    assert_select "form[action=?][method=?]", license_path(@license), "post" do

      assert_select "input#license_name[name=?]", "license[name]"
    end
  end
end
