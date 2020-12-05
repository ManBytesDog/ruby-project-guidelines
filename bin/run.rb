# require_relative '../config/environment'
# require "tty-prompt"
# require 'pry'
# @prompt = TTY::Prompt.new
# @user = nil
# system "clear"
# def intro 
#   puts ":🎸::🎸::🎸:Welcome back to Guitar Parts Warehouse!:🎸::🎸::🎸:"
#   puts " "
#   puts " "
#   uname = @prompt.ask("What is your user name?", default: "Mad Guitar Player")
#   if User.find_by(name: uname)
#     selected_user = User.find_by(name: uname)
#     @user = selected_user
#   else
#     puts "Oh we can't find that username, try creating an account?"
#     new_username = gets.chomp
#     new_user  = User.create(name: new_username)
#     @user= new_user
#   end
#   main_menu
# end
# def main_menu
#   puts"Hello, What are you trying to do?"
#   choice = @prompt.select("These are your options", %w(view_guitars view_parts_ordered create_guitar exit ))
#   if choice == "view_guitars"
#     view_guitars
#   elsif choice == "view_parts_ordered"
#     view_parts
#   elsif choice == "create_guitar"
#     create_guitar
#   else
#     exit
#   end
# end
# def view_guitars
#   puts "YOURE VIEWING GUITARS"
#       # @user.guitar
#       @user.guitars.reload
#       user_guitars_manufacturer = @user.guitars.map { |guitar| guitar.manufacturer}
#       if user_guitars_manufacturer.length == 0
#         create_guitar
#       else
#         manufacturer_list = @prompt.select("Hey #{@user.name}! Which guitar would you like to order parts for today?", user_guitars_manufacturer)
#         guitar_models = @user.guitars.select { |guitar| guitar.manufacturer == manufacturer_list}.map { |guitar| guitar.model}
#         model_select = @prompt.select("Nice Guitars! Which model?", guitar_models)
#       end
# end
# def view_parts
#   puts "YOURE VIEWING PARTS"
#   part_choice = @prompt.select("What are you trying to see?") do | menu |
#     Part.all.each do | p |
#       menu.choice p.part_name, p.id
#     end
#     menu.choice "return", "return"
#   end
#   if part_choice == "return"
#     main_menu
#   end
# end
# def create_guitar
#   puts "lets make a guitar!"
#   puts "~~~~~~~~~~~~~~~~~~~"
#   puts "   ~~~~~~~~~~      "
#   puts "~~~~~~~~~~~~~~~~~~~"
#   puts "~~~~~~~~~~~~~~~~~~~"
#   puts "Whats the name of your project?"
#   guitar_name = gets.chomp
#   Guitar.create(manufacturer:@user.name, model: guitar_name, user: @user)
#   main_menu
# end

# intro
#####################################################################################
require_relative '../config/environment'
require "tty-prompt"
require 'pry'
prompt = TTY::Prompt.new
system "clear"
puts "🎸🎸🎸Welcome back to Guitar Parts Warehouse!🎸🎸🎸"
puts " "
puts " "
uname = prompt.ask("What is your user name?", default: "Shredder")
  if User.find_by(name: uname)
    selected_user = User.find_by(name: uname)
  end
  puts " "
    user_guitars_manufacturer = selected_user.guitars.map { |guitar| guitar.manufacturer}
    manufacturer_list = prompt.select("Hey #{selected_user.name}! Which guitar would you like to order parts for today?", user_guitars_manufacturer)
    puts " "
    if user_guitars_manufacturer
      guitar_models = selected_user.guitars.select { |guitar| guitar.manufacturer == manufacturer_list}.map { |guitar| guitar.model}
      model_select = prompt.select("Nice Guitars! Which model?", guitar_models)
    end
      user_manufacturer = selected_user.guitars.select { |guitar| guitar.manufacturer == manufacturer_list}.map { |guitar| guitar.manufacturer}.join
      puts " "
      puts "Lets get something for your #{user_manufacturer}!"
      puts " "
        # if Guitar.find_by(manufacturer: user_manufacturer)
        #   selected_guitar = Guitar.find_by(manufacturer: user_manufacturer)
        #   parts_to_select = selected_guitar.parts.map { |part| part.part_name }
        #     selected_part = prompt.select(nil, (parts_to_select))
        # end
        if Guitar.find_by(manufacturer: user_manufacturer)
            selected_guitar = Guitar.find_by(manufacturer: user_manufacturer)
            puts "These are your part choices:"
            parts_to_select = prompt.select("Please select from the list") do |menu|
              selected_guitar.parts.each do |part|
                menu.choice part.part_name, part
              end
            end
            puts parts_to_select.part_name
            puts parts_to_select.color
            puts parts_to_select.material
            puts parts_to_select.description
            puts parts_to_select.price
          end
puts " "
puts " "
puts " "
puts " "
puts "It’s Working!!!!!"





