class Item
  def initialize(name:)
    @name = name
  end

  def name
    return "#{@name}"
  end
end

book = Item.new(name: "ゼロ秒思考")
puts book.name
