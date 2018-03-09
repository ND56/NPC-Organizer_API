# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :npcs
  validates :user_name, uniqueness: true
  # validates :subdomain, exclusion: { in: %w(www us ca jp),
  #   message: "%{value} is reserved." }
end
