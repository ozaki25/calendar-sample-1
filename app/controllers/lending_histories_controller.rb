class LendingHistoriesController < ApplicationController
  def index
    @lending_histories = LendingHistory.group(:date)
    @lending_histories_ = [
      {
        date: '2015-05-10',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-11',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-12',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-13',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-06-01',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-14',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-15',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-16',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-17',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-18',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-19',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-20',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      },
      {
        date: '2015-05-21',
        licenses: [
          {name: '100VU', count: 10, color: '#80CBC4'},
          {name: '250VU', count: 9, color: '#42A5F5'},
          {name: '500VU', count: 8, color: '#7E57C2'},
          {name: '1000VU', count: 7, color: '#EF5350'}
        ]
      }
    ]
  end
end
