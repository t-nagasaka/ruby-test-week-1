require 'pry'
require_relative 'brave'
require_relative 'monster'


brave = Brave.new(hp: 500, offense: 60, defense:30)
monster = Monster.new(hp: 600, offense: 80, defense:10)

while brave.hp >= 0 || monster.hp >= 0
  brave.attack(monster)
    if monster.hp <= 0
      puts "モンスターを倒しました！"
      break
    end
  monster.attack(brave)
    if brave.hp <= 0
      puts "勇者は死にました・・・"
      break
    end
end
