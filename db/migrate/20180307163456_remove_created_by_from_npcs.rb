class RemoveCreatedByFromNpcs < ActiveRecord::Migration[5.1]
  def change
    remove_column :npcs, :created_by, :string
  end
end
