class Photographer < ApplicationRecord

  has_many :pictures
  has_many :categories, through: :pictures
  
end
