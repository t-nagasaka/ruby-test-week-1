price = 10000
text = "合計料金: ¥"

print "人数を入力して下さい > "
people = gets.to_i
if people >= 5
  deal = (people * price) * 0.9
  puts "5人以上なので10%割引きとなります"
  puts "#{text}#{deal.to_i}"
else
  puts "#{text}#{people * price}"
end