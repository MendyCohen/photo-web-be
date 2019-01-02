class Picture < ApplicationRecord

  belongs_to :photographer
  belongs_to :category

end
