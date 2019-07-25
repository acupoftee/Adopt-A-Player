class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :hero_class
  has_many :users
end
