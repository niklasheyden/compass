class CreateWeekEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :week_events do |t|
      t.string :title
      t.string :weekday
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
