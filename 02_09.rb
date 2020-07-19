names = ["田中", "佐藤", "佐々木", "高橋"]
names.each_with_index do | value, index |
p "会員No.#{index+1} #{value}さん"
end