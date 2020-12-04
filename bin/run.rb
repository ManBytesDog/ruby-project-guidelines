require_relative '../config/environment'
require "tty-prompt"
require 'pry'

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
       
     
    
  

puts ""
puts ""
puts ""
puts ""
puts "It's Working!!!!!"
