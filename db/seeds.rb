# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

License.create(name: "コントローラ", color: "#FFF9C4", max_num: 20)
License.create(name: "専用区画 win7IE9", color: "#FFE0B2", max_num: 30)
License.create(name: "100VU", color: "#DCEDC8", max_num: 10).tap do |license|
  (1..4).each do |a|
    (1..9).each do |n|
      request = Request.create(date: "2015060#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "2015060#{n}", request_id: request.id)
    end
    (10..30).each do |n|
      request = Request.create(date: "201506#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "201506#{n}", request_id: request.id)
    end
  end
end

License.create(name: "250VU", color: "#B2EBF2", max_num: 8).tap do |license|
  (1..3).each do |a|
    (1..9).each do |n|
      request = Request.create(date: "2015060#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "2015060#{n}", request_id: request.id)
    end
    (10..30).each do |n|
      request = Request.create(date: "201506#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "201506#{n}", request_id: request.id)
    end
  end
end

License.create(name: "500VU", color: "#C5CAE9", max_num: 3).tap do |license|
  (1..2).each do |a|
    (1..9).each do |n|
      request = Request.create(date: "2015060#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "2015060#{n}", request_id: request.id)
    end
    (10..30).each do |n|
      request = Request.create(date: "201506#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "201506#{n}", request_id: request.id)
    end
  end
end

License.create(name: "1000VU", color: "#F8BBD0", max_num: 2).tap do |license|
  (1..1).each do |a|
    (1..9).each do |n|
      request = Request.create(date: "2015060#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "2015060#{n}", request_id: request.id)
    end
    (10..30).each do |n|
      request = Request.create(date: "201506#{n}", name: "テストユーザ", department: "ITプロデュース部", controller: 2, division: 1, block: 2000)
      license.lending_histories.create!(date: "201506#{n}", request_id: request.id)
    end
  end
end
