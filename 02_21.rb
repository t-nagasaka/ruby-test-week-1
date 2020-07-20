require "pry"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

puts "旅行プランを選択して下さい"
plans.each.with_index(1) do |plan, id|
  puts "#{id}. #{plan[:place]}旅行 (¥#{plan[:price]})"
end
  
print "\nプランを選択 > "

choose_plan_num = gets.to_i
choose_plan = plans[choose_plan_num - 1]
# puts "\n#{plans[choose_plan][:place]}旅行ですね、何人で行きますか？"
puts "\n#{choose_plan[:place]}旅行ですね、何人で行きますか？"
print "\n人数を入力 > "
peoples = gets.to_i
total_price = choose_plan[:price] * peoples
if peoples >= 5
  puts <<~TOTAL
    5人以上なので10%割引となります
    合計料金：¥#{(total_price * 0.9).to_i}
    TOTAL
else
  puts "合計料金：¥#{total_price}"
end