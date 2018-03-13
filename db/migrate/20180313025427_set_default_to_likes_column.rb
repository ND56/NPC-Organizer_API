class SetDefaultToLikesColumn < ActiveRecord::Migration[5.1]
  def change
    change_column_default :npcs, :likes, 0
  end
end
