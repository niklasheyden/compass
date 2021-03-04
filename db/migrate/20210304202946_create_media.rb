class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.string :type
      t.text :link
      t.references :project, null: false, foreign_key: true
      t.references :key_result, null: false, foreign_key: true

      t.timestamps
    end
  end
end
