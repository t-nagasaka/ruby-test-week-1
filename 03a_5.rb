require "pry"

class User

  attr_reader :name, :age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
end

class Zoo

    # attr_reader :name, :infant, :children, :adult, :senior

  def initialize(**params)
    @name = params[:name]
    @infant = params[:entry_fee][:infant]
    @children = params[:entry_fee][:children]
    @adult = params[:entry_fee][:adult]
    @senior = params[:entry_fee][:senior]
  end

  # def info_entry_fee(user)
  #   user_age = user.age
  #   if 0 <= user_age && user_age <= 5
  #     price = @infant
  #     # binding.pry
  #   elsif 6 <= user_age && user_age <= 12
  #     price = @children
  #   elsif 13 <= user_age && user_age  <= 63
  #     price = @adult
  #   else 64 <= user_age && user_age <= 120
  #     price = @senior
  #   end
  #   puts "#{user.name}さんの入場料は #{price} 円です。"
  # end

  def info_entry_fee(user)
    price = case user.age
    when 0..5
      @infant
    when 6..12
      @children
    when 13..63
      @adult
    when 64..120
      @senior
    end
    puts "#{user.name}さんの入場料は #{price} 円です。"
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
