class ReminderJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Check for upcoming events and create reminders
    Event.upcoming.each do |event|
      # Calculate the reminder time based on the event's date and the lead time
      reminder_time = event.date - SETTINGS['reminder_lead_time_minutes'].minutes

      # Check if the current time is within the reminder time window
      if Time.current <= reminder_time && reminder_time <= Time.current + 10.minutes # 10 minutes buffer
        # Check if a reminder exists
        reminder = event.reminders.find_or_initialize_by(remind_at: reminder_time)
        
        if reminder.new_record?
          reminder.message = "Reminder for event: #{event.title}"
          reminder.save

          # Assuming event has a relation to a user who owns it or is attending it
          # Replace `user` with the actual association method or logic to get the user(s)
          user = event.user 
          EventReminderMailer.event_reminder(user, event).deliver_later if user.present?
        end
      end
    end
  end
end
