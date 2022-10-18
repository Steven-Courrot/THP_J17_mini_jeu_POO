require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "A ma gauche, voici #{player1.name} avec #{player1.life_points} points de vie. A ma droite, voici #{player2.name} avec #{player2.life_points} points de vie."

while player1.life_points > 0 and player2.life_points > 0
  puts
  puts "Voici l'état de chaque combattant:"
  puts
  player1.show_state
  player2.show_state
  puts
  puts "Passons à la phase d'attaque:"
  puts
  player1.attacks(player2) 
  puts
  break if player2.life_points <= 0
  puts
  player2.attacks(player1)
  puts
end
  binding.pry