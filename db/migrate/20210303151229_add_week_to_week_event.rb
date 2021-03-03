class AddWeekToWeekEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :week_events, :week, null: false, foreign_key: true
  end
end
