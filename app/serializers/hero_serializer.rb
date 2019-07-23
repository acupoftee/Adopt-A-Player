class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :class, :users
end
