names = ["田中", "佐藤", "佐々木", "高橋"]
names.each.with_index(1) do |value, index|
p "会員No.#{index} #{value}さん"
end

# each.with_index()