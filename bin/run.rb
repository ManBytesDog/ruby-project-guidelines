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
    uname = User.find_by(name: uname)
    selected_user = uname.find_by(name: uname)
    prompt.select("Hey #{selected_user} which guitar would you like to order parts for today?", %w("Fender"))
  end

puts ""
puts ""
puts ""
puts ""
puts "It's Working!!!!!"
