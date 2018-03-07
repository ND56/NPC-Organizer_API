class CreateNpcs < ActiveRecord::Migration[5.1]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :race
      t.string :class
      t.string :challenge_rating
      t.string :stats
      t.string :traits
      t.string :notes
      t.string :created_by

      t.timestamps
    end
  end
end
