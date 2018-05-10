class FolderSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
  has_many :npcs
  has_many :saves
end
