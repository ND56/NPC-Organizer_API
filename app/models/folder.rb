class Folder < ApplicationRecord
  belongs_to :user
  has_many :saves
  has_many :npcs, through: :saves
end
