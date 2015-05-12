require 'rails_helper'

RSpec.describe "lending_histories/edit", type: :view do
  before(:each) do
    @lending_history = assign(:lending_history, LendingHistory.create!(
      :license => nil
    ))
  end

  it "renders the edit lending_history form" do
    render

    assert_select "form[action=?][method=?]", lending_history_path(@lending_history), "post" do

      assert_select "input#lending_history_license_id[name=?]", "lending_history[license_id]"
    end
  end
end
