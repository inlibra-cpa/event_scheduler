class AddCalendarIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :calendar_id, :integer
    add_index :events, :calendar_id
    add_foreign_key :events, :calendars
  end
end
