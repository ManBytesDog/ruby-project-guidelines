require_relative '../config/environment'
require "tty-prompt"

prompt = TTY::Prompt.new

prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))



puts "HELLO WORLD"
