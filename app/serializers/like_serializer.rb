class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :npc_id
  # has_one :user
  has_one :npc
end
