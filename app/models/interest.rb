class Interest < ApplicationRecord

  has_many :users, through: :userinterests

end
