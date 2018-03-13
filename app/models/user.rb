# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :npcs
  has_many :likes
  has_many :liked_npcs, through: :likes,
                        source: :npc

  validates :user_name, uniqueness: true
end
