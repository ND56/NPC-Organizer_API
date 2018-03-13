class AddLikeFeatureToNpcs < ActiveRecord::Migration[5.1]
  def change
    add_column :npcs, :likes, :integer
    add_column :npcs, :liked_by, :string
  end
end
