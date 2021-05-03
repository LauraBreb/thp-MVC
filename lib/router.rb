require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Bienvenue dans the Gossip Project"
    while true
      gets.chomp
      puts "What do you want?
        1 - create a gossip
        2 - display gossips
        3 - delete gossip
        4 - quit the app"
      choice = gets.chomp.to_i
      puts ""
      case choice
      when 1
        puts "you choose to create a gossip"
        puts ""
        @controller.create_gossip
      when 2
        puts "you choose to display gossips"
        puts ""
        @controller.index_gossips
      when 3
        puts "you choose to delete gossip"
        puts ""
        @controller.delete_gossip
      when 4
        puts "A bientôt !"
        break
      else
        puts "I don't get your choice, try again"
      end
    end
  end

end