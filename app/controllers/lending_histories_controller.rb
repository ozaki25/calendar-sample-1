class LendingHistoriesController < ApplicationController
  def show
    @lending_histories = LendingHistory.group(:date)
  end
end
