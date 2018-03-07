class NpcSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :challenge_rating, :stats, :traits,
             :notes, :private, :dnd_class
end
