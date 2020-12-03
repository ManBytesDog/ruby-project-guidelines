require_relative '../config/environment'
require "tty-prompt"
require 'pry'
# require 'colorize'

prompt = TTY::Prompt.new

system "clear"

puts "🎸🎸🎸Welcome back to Guitar Parts Warehouse!🎸🎸🎸"
puts " "
puts " "
uname = prompt.ask("What is your user name?", default: "Mad Guitar Player")

  if User.find_by(name: uname)
    selected_user = User.find_by(name: uname) 
  end
  puts " "
    user_guitars_manu = selected_user.guitars.map { |guitar| guitar.manufacturer}
    manufacturer_list = prompt.select("Hey #{selected_user.name} which guitar would you like to order parts for today?", user_guitars_manu)
    puts " "
    if user_guitars_manu = "Fender"
    #  prompt.select "Nice Guitars"
      user_guitars_model = selected_user.guitars.map { |guitar| guitar.model} 
      model_select = prompt.select("Nice Guitars! Which model?", user_guitars_model)
    end
  

puts ""
puts ""
puts ""
puts ""
puts "It's Working!!!!!"
