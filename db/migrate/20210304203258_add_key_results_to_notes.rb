class AddKeyResultsToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :key_result, null: false, foreign_key: true
  end
end
