class NpcSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :challenge_rating, :stats, :traits,
             :notes, :private, :dnd_class
  has_one :user
  # consider whether I should just include :user_id in the attributes list
  # this might allow people to access sensitive information
end
