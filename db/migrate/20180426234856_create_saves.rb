class CreateSaves < ActiveRecord::Migration[5.1]
  def change
    create_table :saves do |t|
      t.references :folder, foreign_key: true
      t.references :npc, foreign_key: true

      t.timestamps
    end
  end
end
