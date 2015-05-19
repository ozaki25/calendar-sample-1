this.Calendar = React.createClass({
  getInitialState: function() {
    return {
      baseDate: moment(this.props.today)
    };
  },
  today: function() {
    this.setState({ baseDate: moment(new Date()) });
  },
  prevMonth: function() {
    this.setState({ baseDate: this.state.baseDate.clone().add(-1, "month") });
  },
  nextMonth: function() {
    this.setState({ baseDate: this.state.baseDate.clone().add(1, "month") });
  },
  render: function() {
    return (
<div className="container">
  <div>
    <button className="btn btn-default today" type="button" onClick={this.today}>今月</button>
    <button className="btn btn-default prev" type="button" onClick={this.prevMonth}>&lt;</button>
    <button className="btn btn-default next" type="button" onClick={this.nextMonth}>&gt;</button>
    <span>{this.state.baseDate.clone().format('YYYY年M月')}</span>
  </div>
  <CalendarMonth baseDate={this.state.baseDate} lendingHistories={this.props.lendingHistories} />
</div>
    )
  }
});

this.CalendarMonth = React.createClass({
  render: function() {
    var weekdays = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]
    return (
<table className="table table-bordered">
  <thead>
    <tr className="calendar__weekday-header">
      {weekdays.map(function(weekday, i) {
        return <th key={i} className="calendar__weekday">{weekday}</th>;
      })}
    </tr>
  </thead>
  <CalendarDay baseDate={this.props.baseDate} lendingHistories={this.props.lendingHistories} />
</table>
    )
  }
});

this.CalendarDay = React.createClass({
  render: function() {
    var baseDate = this.props.baseDate;
    var startDate = baseDate.clone().startOf("month").day(0);
    var endDate = baseDate.clone().endOf("month").day(6);
    var totalDays = endDate.diff(startDate, "days") + 1;
    var days = [];
    var lendingHistories = this.props.lendingHistories;

    _.times(totalDays, function(n) {
      var day = startDate.clone().add(n, "days");
      var className = day.format("M") == baseDate.format("M") ? "calendar__date" : "calendar__out-of-date";
      days.push(
<td key={n} className={className}>
  <div className="calendar__day">{day.format("M/D")}</div>
  <Lendings day={day} lendingHistories={lendingHistories} />
</td>
      );
    });
    var weeks = _.chunk(days, 7);
    return(
      <tbody>
        {weeks.map(function(week, i) {
          return <tr key={i}>{week}</tr>;
        })}
      </tbody>
    )
  }
});

this.Lendings = React.createClass({
  render: function() {
    var day = this.props.day;
    var lendingHistories = this.props.lendingHistories;
    var lendings =[];
    _.forEach((lendingHistories), function(lendingHistory, i) {
      if(day.isSame(new Date(lendingHistory.date), "day")) {
        _.forEach((lendingHistory.licenses), function(license, j) {
	  console.log(license);
	  var style = {backgroundColor: license.color};
	  lendings.push(
<div key={i + j} className="calendar__lending" style={style}>
  <div className="row">
    <div className="col-md-6 calendar__lending-name">{license.name}</div>
    <div className="col-md-6 calendar__lending-number"><span className="number">{license.count}</span>件</div>
  </div>
</div>
            );
	  });
	}
      });
    return(<div>{lendings}</div>);
  }
});