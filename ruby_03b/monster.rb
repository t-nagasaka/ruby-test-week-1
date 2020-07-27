require_relative 'character'

class Monster < Character

  def attack(brave)
    monster_damage = rand(@offense - brave.defense)
    puts <<~ATTACK

      "モンスターの攻撃!
      #{monster_damage}のダメージを受けた！"
      ATTACK
      brave.hp -= monster_damage
  end

end