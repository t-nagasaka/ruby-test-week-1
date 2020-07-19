sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
new_sports = sports.flatten.uniq
p "ユーザーの趣味一覧"
new_sports.each_with_index do |sport, index|
  p "No#{index+1} #{sport}"
end