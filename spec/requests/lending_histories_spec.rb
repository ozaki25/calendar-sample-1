require 'rails_helper'

RSpec.describe "LendingHistories", type: :request do
  describe "GET /lending_histories" do
    it "works! (now write some real specs)" do
      get lending_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
