json.lendingHistories @lending_histories do |lending_history_group_by_date|
  json.date lending_history_group_by_date.date
  json.licenses LendingHistory.where(date: lending_history_group_by_date.date).group(:license_id) do |lending_history|
    json.name lending_history.license.name
    json.color lending_history.license.color
    json.count "5"#LendingHistory.where(date: lending_history_group_by_date.date).group(:license_id).count
  end
end
