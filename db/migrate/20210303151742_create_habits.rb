class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.string :title
      t.string :category
      t.integer :intervall_num
      t.string :intervall_period
      t.boolean :reminder
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.references :week, null: false, foreign_key: true

      t.timestamps
    end
  end
end
