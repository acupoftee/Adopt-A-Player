class Hero < ApplicationRecord
  has_many :user_heros
  has_many :users, through: :user_heros
end
