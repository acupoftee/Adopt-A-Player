class UserHeroSerializer < ActiveModel::Serializer
  attributes :id
  has_one :hero
  has_one :user
end
