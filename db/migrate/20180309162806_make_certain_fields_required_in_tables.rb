class MakeCertainFieldsRequiredInTables < ActiveRecord::Migration[5.1]
  def change
    change_column_null :npcs, :name, false
    change_column_null :npcs, :private, false
    change_column_null :users, :user_name, false
  end
end
