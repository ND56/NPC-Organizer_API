class SafeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :folder
  has_one :npc
end
