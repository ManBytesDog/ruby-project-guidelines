class GuitarPart < ActiveRecord::Base
belongs_to :guitar
belongs_to :part

end