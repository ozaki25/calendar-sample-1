class LendingHistoriesController < ApplicationController
  def index
    @lending_histories = LendingHistory.group(:date)
  end
end
