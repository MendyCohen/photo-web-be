class Category < ApplicationRecord

  has_many :pictures
  has_many :photographer, through: :pictures
end
