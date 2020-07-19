foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
foods.each do | food |
  if food.include?("うに")
    p "大好物です"
  else
    p "まぁまぁ好きです"
  end
end