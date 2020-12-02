class Part < ActiveRecord::Base
has_many :guitar_parts
has_many :guitars, through: :guitar_parts 

end