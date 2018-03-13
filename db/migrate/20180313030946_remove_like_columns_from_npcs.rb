class RemoveLikeColumnsFromNpcs < ActiveRecord::Migration[5.1]
  def change
    remove_column :npcs, :likes, :integer
    remove_column :npcs, :liked_by, :string
  end
end
