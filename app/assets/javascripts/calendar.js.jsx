this.Calendar = React.createClass({
  render: function() {
    var baseDate = moment(new Date());
    return (
<div className="container">
  <CalendarTitle baseDate={baseDate}/>
  <CalendarMonth baseDate={baseDate}/>
</div>
    )
  }
});

this.CalendarTitle = React.createClass({
  render: function() {
    return(
<table>
  <tbody>
    <tr>
      <td>
        <button className="btn btn-default today" type="button">今月</button>
      </td>
      <td>
        <button className="btn btn-default prev" type="button">&lt;</button>
      </td>
      <td>
        <button className="btn btn-default next" type="button">&gt;</button>
      </td>
      <td>
        <h4>{this.props.baseDate.clone().format('YYYY年M月')}</h4>
      </td>
    </tr>
  </tbody>
</table>
    )
  }
});

this.CalendarMonth = React.createClass({
  render: function() {
    return (
<table className="table table-bordered">
  <CalendarHeader/>
  <CalendarBody baseDate={this.props.baseDate}/>
</table>
    )
  }
});

this.CalendarHeader = React.createClass({
  render: function() {
    var weekdays = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]
    return (
<thead>
  <tr className="calendar__weekday-header">
    {weekdays.map(function(weekday, i) {
      return <th key={i} className="calendar__weekday">{weekday}</th>;
    })}
  </tr>
</thead>
    )
  }
});

this.CalendarBody = React.createClass({
  render: function() {
    var baseDate = this.props.baseDate;
    var startDate = baseDate.clone().startOf("month").day(0);
    var endDate = baseDate.clone().endOf("month").day(6);
    var totalDays = endDate.diff(startDate, "days") + 1;
    var days = [];

    _.times(totalDays, function(n) {
      var day = startDate.clone().add("days", n);
      var classes = day.format("M") == baseDate.format("M") ? "calendar__date" : "calendar__out-of-date"
      days.push(<td className={classes}>{day.format("D")}</td>);
    });
    var weeks = _.chunk(days, 7)
        
    return(
      <tbody>
        {weeks.map(function(week, i) {
          return <tr key={i}>{week}</tr>;
        })}
      </tbody>
    )
  }
});