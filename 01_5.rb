puts <<~TEXT
  旅行プランを選択してください
  1. 沖縄旅行（¥10000）
  2. 北海道旅行（¥20000）
  3. 九州旅行（¥15000）

TEXT

print "プランを選択 > "
plan = gets.to_i
if plan == 1
  puts "沖縄ですね、何人で行きますか？"
  print "人数を入力 > " 
  people = gets.to_i
  price = people * 10000
  puts "合計金額:¥#{price}"
elsif plan == 2
  puts "北海道ですね、何人で行きますか？"
  print "人数を入力 > " 
  people = gets.to_i
  price = people * 20000
  puts "合計金額:¥#{price}"
elsif plan == 3
  puts "九州ですね、何人で行きますか？"
  print "人数を入力 > " 
  people = gets.to_i
  price = people * 15000
  puts "合計金額:¥#{price}"
end

