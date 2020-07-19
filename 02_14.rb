data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }
create_keys = []
data.each do | key, value |
  create_keys << key
end
p create_keys