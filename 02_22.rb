
# プログラムの大まかな内容を箇条書き
# メソッド名にするために英語で表す
# メソッドに処理を分ける
# 動作するように修正

# plan_description 行き先と金額の表示
# get_plan プランを選択させる
# get_peoples 人数を選択させる
# total_price 金額の計算(割引込)

require './02_22_methods'

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

plan_description(plans)
choose_plan = get_plan(plans)
peoples = get_peoples(choose_plan)
total_price(peoples, choose_plan)