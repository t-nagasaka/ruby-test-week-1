class User
  def initialize(name:)
    @name = name
  end

  def name=(name)
    @name = name
  end
end

user = User.new(name: "taichi")
user.name = "taichi2"
