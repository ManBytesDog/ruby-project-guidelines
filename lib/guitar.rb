class Guitar < ActiveRecord::Base
belongs_to :user
has_many :guitar_parts 
has_many :parts, through: :guitar_parts 

end