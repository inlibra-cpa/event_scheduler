class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.references :event, null: false, foreign_key: true
      t.datetime :remind_at
      t.text :message

      t.timestamps
    end
  end
end
