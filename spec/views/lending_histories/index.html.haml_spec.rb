require 'rails_helper'

RSpec.describe "lending_histories/index", type: :view do
  before(:each) do
    assign(:lending_histories, [
      LendingHistory.create!(
        :license => nil
      ),
      LendingHistory.create!(
        :license => nil
      )
    ])
  end

  it "renders a list of lending_histories" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
