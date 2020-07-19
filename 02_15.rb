data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
data2 = { name: "yamada", hobby: "baseball", role: "normal" }
if data1.to_s.include?("age")
  p "OK"
else
  p "NG"
end

if data2.to_s.include?("age")
  p "OK"
else
  p "NG"
end