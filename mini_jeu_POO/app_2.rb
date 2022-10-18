require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts '--------------------------------------'
puts '| Bienvenue sur ILS VEULENT MA POO   |'
puts '|   Le but du jeu est de survivre    |'
puts '--------------------------------------'
puts
sleep(1)
puts 'Bonjour ! Quel est votre prénom ? '
name = gets.chomp
user = HumanPlayer.new(name)

player1 = Player.new('Josiane')
player2 = Player.new('José')


binding.pry