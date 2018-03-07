class NpcSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :class, :challenge_rating, :stats, :traits,
             :notes, :created_by
end
