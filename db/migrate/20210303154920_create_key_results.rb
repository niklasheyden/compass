class CreateKeyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :key_results do |t|
      t.string :title
      t.integer :target_num
      t.integer :current_num
      t.references :life_goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
