class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
  end

  def info
    puts <<~INFO
           name:#{@name}
           age:#{@age}
           gender:#{@gender}
         INFO
  end
end

user1 = User.new(name: "神里", age: 32, gender: "男")
user2 = User.new(name: "たけ", age: 38, gender: "男")

user1.info
puts "-------------"
user2.info
