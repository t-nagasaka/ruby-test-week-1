require "pry"

class Zoo
  def initialize(params)
    # binding.pry
    @name = params[:name]
    @infant = params.dig(:entry_fee, :infant)
    @children = params.dig(:entry_fee, :children)
    @adult = params.dig(:entry_fee, :adult)
    @senior = params.dig(:entry_fee, :senior)
  end

  def info
    <<~TEXT
      ＜#{@name}の入場料金＞
      
      幼児 : #{@infant}円
      こども : #{@children}円
      おとな : #{@adult}円
      シニア : #{@senior}円
    TEXT
  end
end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })
puts zoo.info
