class LendingHistoriesController < ApplicationController
  def index
    @lending_histories = [
      {
        date: '2015-05-05',
        licenses: [
          {name: '100VU', count: 10}
        ]
      },
      {
        date: '2015-05-10',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-11',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-12',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-13',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-06-01',
        licenses: [
          {name: 'aaa', count: 1000},
          {name: 'bbb', count: 9000},
          {name: 'ccc', count: 8000},
          {name: 'ddd', count: 7000}
        ]
      },
      {
        date: '2015-05-14',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-15',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-16',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-17',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-18',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-19',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-20',
        licenses: [
          {name: '100VU', count: 10},
          {name: '250VU', count: 9},
          {name: '500VU', count: 8},
          {name: '1000VU', count: 7}
        ]
      },
      {
        date: '2015-05-21',
        licenses: [
          {name: '100VU', count: 15},
          {name: '250VU', count: 16},
          {name: '500VU', count: 17},
          {name: '1000VU', count: 18}
        ]
      }
    ]
  end
end
