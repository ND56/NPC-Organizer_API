class Folder < ApplicationRecord
  belongs_to :user
  has_many :saves, dependent: :destroy
  has_many :npcs, through: :saves
end
