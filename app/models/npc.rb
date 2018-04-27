class Npc < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :saves
  has_many :folders, through: :saves
  has_many :liking_users, through: :likes,
                          source: :user

  validates :name, uniqueness: true
end
