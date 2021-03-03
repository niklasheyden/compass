class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.string :color
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end