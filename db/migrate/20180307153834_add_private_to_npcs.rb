class AddPrivateToNpcs < ActiveRecord::Migration[5.1]
  def change
    add_column :npcs, :private, :boolean
  end
end
