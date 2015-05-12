class LendingHistoriesController < ApplicationController
  def index
    @lending_histories = [
      {date: '2015-05-15', licenses: [{name: '100VU', count: 10}, {name: '500VU', count: 7}]}
    ]
  end
end
