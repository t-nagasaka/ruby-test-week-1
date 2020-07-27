require_relative 'character'

class Brave < Character 

  def attack(monster)
    brave_damage = rand(@offense - monster.defense)
    puts <<~ATTACK

      "勇者の攻撃!
      #{brave_damage}のダメージを与えた！"
      ATTACK
      monster.hp -= brave_damage
  end

end