class HomeController < ApplicationController
  def index
    @lending_histories = LendingHistory.group(:date)
  end
end
