require 'rails_helper'

RSpec.describe "lending_histories/new", type: :view do
  before(:each) do
    assign(:lending_history, LendingHistory.new(
      :license => nil
    ))
  end

  it "renders new lending_history form" do
    render

    assert_select "form[action=?][method=?]", lending_histories_path, "post" do

      assert_select "input#lending_history_license_id[name=?]", "lending_history[license_id]"
    end
  end
end
