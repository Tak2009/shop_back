# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cash_31032021 = Cash.create(:date => "2021-03-31", :bal => 10000)

bi_1 = Bicycle.create(:bitype => "A", :qty => 50, :uprice => 100, :ucost => 50)
bi_2 = Bicycle.create(:bitype => "B", :qty => 20, :uprice => 300, :ucost => 100)
bi_3 = Bicycle.create(:bitype => "C", :qty => 20, :uprice => 800, :ucost => 200)

sale_1 = Sale.create(date1: "2021-01-10", date2: "2021-01-12", bicycle_id: bi_1.id, qtysold: 50, valuesold: 0 )
sale_1.update(:valuesold => sale_1.qtysold * Bicycle.find(sale_1.bicycle_id).uprice)

sale_2 = Sale.create(date1: "2021-02-15", date2: "2021-02-17", bicycle_id: bi_2.id, qtysold: 20, valuesold: 0 )
sale_2.update(:valuesold => sale_2.qtysold * Bicycle.find(sale_2.bicycle_id).uprice)

sale_3 = Sale.create(date1: "2021-02-20", date2: "2021-02-22", bicycle_id: bi_1.id, qtysold: 50, valuesold: 0 )
sale_3.update(:valuesold => sale_3.qtysold * Bicycle.find(sale_3.bicycle_id).uprice)

sale_4 = Sale.create(date1: "2021-03-25", date2: "2021-03-27", bicycle_id: bi_3.id, qtysold: 20, valuesold: 0 )
sale_4.update(:valuesold => sale_4.qtysold * Bicycle.find(sale_4.bicycle_id).uprice)

purchase_1 = Purchase.create(date1: "2021-01-01", date2: "2021-01-03", bicycle_id: bi_1.id, qtybought: 50, valuebought: 0, finishdate: "")
purchase_1.update(:valuebought => purchase_1.qtybought * Bicycle.find(purchase_1.bicycle_id).ucost, :finishdate => purchase_1.date2 + 15)

purchase_2 = Purchase.create(date1: "2021-02-08", date2: "2021-02-10", bicycle_id: bi_2.id, qtybought: 20, valuebought: 0, finishdate: "")
purchase_2.update(:valuebought => purchase_2.qtybought * Bicycle.find(purchase_2.bicycle_id).ucost, :finishdate => purchase_2.date2 + 15)

purchase_3 = Purchase.create(date1: "2021-03-20", date2: "2021-03-22", bicycle_id: bi_3.id, qtybought: 30, valuebought: 0, finishdate: "")
purchase_3.update(:valuebought => purchase_3.qtybought * Bicycle.find(purchase_3.bicycle_id).ucost, :finishdate => purchase_3.date2 + 15)