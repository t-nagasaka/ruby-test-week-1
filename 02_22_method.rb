


# plan_description 行き先と金額の表示
def plan_description(plans)
  puts "旅行プランを選択して下さい"
  plans.each.with_index(1) do |plan, id|
    puts "#{id}. #{plan[:place]}旅行 (¥#{plan[:price]})"
  end
end

# get_plan プランを選択させる
def get_plan(plans)
  print "\nプランを選択 > "
  choose_plan_num = gets.to_i
  choose_plan = plans[choose_plan_num - 1]
end

# get_peoples 人数を選択させる
def get_peoples(choose_plan)
  puts "\n#{choose_plan[:place]}旅行ですね、何人で行きますか？"
  print "\n人数を入力 > "
  peoples = gets.to_i
end

# total_price 金額の計算(割引込)
def total_price(peoples, choose_plan)
    price = choose_plan[:price] * peoples
    if peoples >= 5
    puts <<~TOTAL
      5人以上なので10%割引となります
      合計料金：¥#{(price * 0.9).to_i}
      TOTAL
    else
    puts "合計料金：¥#{price}"
  end
end