# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :heros
  has_many :videos
end
