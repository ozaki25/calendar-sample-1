# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

License.create(name: "コントローラ", color: "#8D6E63")
License.create(name: "専用区画 win7IE9", color: "#FFA726")
License.create(name: "100VU", color: "#80CBC4").tap do |license|
  (1..4).each do |a|
    (1..9).each do |n|
      license.lending_histories.create!(date: "2015050#{n}")
    end
    (10..30).each do |n|
      license.lending_histories.create!(date: "201505#{n}")
    end
  end
end

License.create(name: "250VU", color: "#42A5F5").tap do |license|
  (1..3).each do |a|
    (1..9).each do |n|
      license.lending_histories.create!(date: "2015050#{n}")
    end
    (10..30).each do |n|
      license.lending_histories.create!(date: "201505#{n}")
    end
  end
end

License.create(name: "500VU", color: "#7E57C2").tap do |license|
  (1..2).each do |a|
    (1..9).each do |n|
      license.lending_histories.create!(date: "2015050#{n}")
    end
    (10..30).each do |n|
      license.lending_histories.create!(date: "201505#{n}")
    end
  end
end

License.create(name: "1000VU", color: "#EF5350").tap do |license|
  (1..1).each do |a|
    (1..9).each do |n|
      license.lending_histories.create!(date: "2015050#{n}")
    end
    (10..30).each do |n|
      license.lending_histories.create!(date: "201505#{n}")
    end
  end
end
