json.lendingHistories @lending_histories do |lending_history|
  json.date lending_history.date
  json.licenses License.all do |license|
    json.name license.name
    json.color license.color
    json.count license.max_num - LendingHistory.where(date: lending_history.date).where(license_id: license.id).count
  end
end
