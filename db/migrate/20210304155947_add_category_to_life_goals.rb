class AddCategoryToLifeGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :life_goals, :category, :string
  end
end
