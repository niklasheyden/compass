class CreateWeekGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :week_goals do |t|
      t.string :title
      t.boolean :completed
      t.string :priority
      t.references :week, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.references :life_goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
