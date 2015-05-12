require 'rails_helper'

RSpec.describe "lending_histories/show", type: :view do
  before(:each) do
    @lending_history = assign(:lending_history, LendingHistory.create!(
      :license => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
