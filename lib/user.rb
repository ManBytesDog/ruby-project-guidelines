class User < ActiveRecord::Base 
  has_many :guitars
  has_many :guitar_parts, through: :guitars
  has_many :parts, through: :guitar_parts
  end