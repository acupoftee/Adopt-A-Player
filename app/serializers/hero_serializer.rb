class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :hero_class, :users
  has_many :users
end
