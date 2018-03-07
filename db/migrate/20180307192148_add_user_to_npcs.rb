class AddUserToNpcs < ActiveRecord::Migration[5.1]
  def change
    add_reference :npcs, :user, foreign_key: true
  end
end
