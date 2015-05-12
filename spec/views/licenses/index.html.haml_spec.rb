require 'rails_helper'

RSpec.describe "licenses/index", type: :view do
  before(:each) do
    assign(:licenses, [
      License.create!(
        :name => "Name"
      ),
      License.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of licenses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
