# user_data = { name: "神里", age: 31, address: "埼玉" }
# update_data = { age: 32, address: "沖縄" }
# user_data[:age] = update_data[:age]
# user_data[:address] = update_data[:address]
# p user_data

# hashのまま更新できるように

user_data = { name: "神里", age: 31, address: "埼玉" }
update_data = { age: 32, address: "沖縄" }
user_data.merge!(update_data)
p user_data