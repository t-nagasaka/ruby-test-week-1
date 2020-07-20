foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
foods.each do |food|
  puts food.include?("うに") ? "大好物です" : "まぁまぁ好きです"
end

# puts
# 三項演算子