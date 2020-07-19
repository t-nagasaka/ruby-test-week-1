  $plans = [
    { place: "沖縄", price: 10000 },
    { place: "北海道", price: 20000 },
    { place: "九州", price: 15000 }
  ]
  def travel
    puts "旅行プランを選択して下さい"
    $plans.each_with_index do | plan, id |
      puts "#{id + 1}. #{plan[:place]}旅行 (¥#{plan[:price]})"
    end
      
    print "\nプランを選択 > "

    choose_plan = gets.to_i - 1
    puts "\n#{$plans[choose_plan][:place]}旅行ですね、何人で行きますか？"
    print "\n人数を入力 > "
    peoples = gets.to_i
    total_price = $plans[choose_plan][:price] * peoples
    if peoples >= 5
      puts <<~TOTAL
        5人以上なので10%割引となります
        合計料金：¥#{(total_price * 0.9).to_i}
        TOTAL
    else
      p "合計料金：¥#{total_price}"
    end
  end


travel