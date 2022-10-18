class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "Le joueur #{name} a #{@life_points} points de vie" if @life_points > 0
  end

  def gets_damage(damage)
    @life_points -= damage
    puts "Le joueur #{name} a été tué !" if life_points <= 0
  end

  def attacks(player)
    damage = compute_damage
    player.gets_damage(damage)
    puts "Le joueur #{name} attaque le joueur #{player.name}"
    puts "Il lui inflige #{damage} points de dommages"
  end

  def compute_damage
    rand(1..6)
  end

end


class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "Le joueur #{name} a #{@life_points} point(s) de vie et une arme de niveau #{@weapon_level}."
  end

  def compute_damage
    rand(1..6) * weapon_level
  end

  def search_weapon
    new_weapon = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon}" 
    if new_weapon > weapon_level
    puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
    puts "Mince... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    health_pack = rand(1..6)
    if health_pack == 1
    puts "Tu n'as rien trouvé..." 
    elsif health_pack = 2..5
    @life_points + 50 <= 100
    puts "Bravo tu as trouvé un pack de soin de 50hp"
    elsif health_pack == 6
    @life_points + 80 <= 100
    puts "Waow, tu as trouvé un pack de +80 points de vie !"
    end
  end
end
