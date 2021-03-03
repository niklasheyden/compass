class CreateLifeGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :life_goals do |t|
      t.string :title
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
