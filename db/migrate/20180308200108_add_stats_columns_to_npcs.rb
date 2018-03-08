class AddStatsColumnsToNpcs < ActiveRecord::Migration[5.1]
  def change
    remove_column :npcs, :stats, :string
    add_column :npcs, :HP, :integer
    add_column :npcs, :AC, :integer
    add_column :npcs, :ability_modifiers, :string
    add_column :npcs, :spells_abilities, :string
    add_column :npcs, :items, :string
    add_column :npcs, :level, :integer
  end
end
