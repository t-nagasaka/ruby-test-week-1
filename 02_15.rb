data1 = { name: "saitou", hobby: "soccer", age: false, role: "admin" }
data2 = { name: "yamada", hobby: "baseball", role: "normal" }

if data1.key?(:age)
  puts "OK"
else
  puts "NG"
end

puts data2.has_key?(:age) ? "OK" : "NG"

# キーが含まれているかどうかを判定するメソッド