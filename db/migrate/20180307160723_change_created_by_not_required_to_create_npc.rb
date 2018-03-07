class ChangeCreatedByNotRequiredToCreateNpc < ActiveRecord::Migration[5.1]
  def change
    change_column_null :npcs, :created_by, false
  end
end
