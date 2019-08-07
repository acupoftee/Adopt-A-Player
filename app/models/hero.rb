class Hero < ApplicationRecord
  has_many :user_heros, dependent: :destroy
  has_many :users, through: :user_heros
end
