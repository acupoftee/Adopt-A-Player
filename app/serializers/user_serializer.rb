# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :display_name,
             :summary, :is_mentor, :platform,
             :region, :avatar_url, :skill_rating
  has_many :videos
  has_many :heros
end
