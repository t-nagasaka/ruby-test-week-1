sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
new_sports = sports.flatten.uniq
puts "ユーザーの趣味一覧"
new_sports.each.with_index(1) do |sport, index|
  puts "No#{index} #{sport}"
end