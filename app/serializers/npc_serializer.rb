class NpcSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :challenge_rating, :traits, :notes,
             :private, :dnd_class, :HP, :AC, :ability_modifiers,
             :spells_abilities, :items, :level
  has_one :user
  # consider whether I should just include :user_id in the attributes list
  # this might allow people to access sensitive information
end
