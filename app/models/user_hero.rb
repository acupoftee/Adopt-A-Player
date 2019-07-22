class UserHero < ApplicationRecord
  belongs_to :hero
  belongs_to :user
end
