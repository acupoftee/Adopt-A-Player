# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :heroes, through: :user_heroes
  has_many :user_heroes, dependent: :destroy
end
