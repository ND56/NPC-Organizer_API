class ChangeNameOfClassColumnInNpcs < ActiveRecord::Migration[5.1]
  def change
    remove_column :npcs, :class, :string
    add_column :npcs, :dnd_class, :string
  end
end
