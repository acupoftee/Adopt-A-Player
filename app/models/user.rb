# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :videos
  has_many :user_heros, dependent: :destroy
  has_many :heros, through: :user_heros
end
