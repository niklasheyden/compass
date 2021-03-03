class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.string :title
      t.string :color
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
