class Hero < ApplicationRecord
  has_many :users, through: :user_heroes
end
