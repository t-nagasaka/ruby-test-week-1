require "pry"

class User
  def initialize(params)
    $name = params[:name]
    $age = params[:age]
  end
end

def info_entry_fee
  # name = params[:name]
  # age = params[:age]
  if 0 <= age <= 5
    price = @infant
  elsif 6 <= age <= 12
    price = @children
  elsif 13 <= age <= 63
    price = @adult
  elsif 64 <= age <= 120
    price = @senior
    puts "#{:name}さんの入場料は #{price}¥ 円です。"
  end
end

class Zoo
  def initialize(params)
    @name = params[:name]
    @infant = params[:entry_fee][:infant]
    @children = params[:entry_fee][:children]
    @adult = params[:entry_fee][:adult]
    @senior = params[:entry_fee][:senior]
  end
end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108),
]

users.each do |user|
  zoo.info_entry_fee(user)
end
