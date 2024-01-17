every 10.minutes do
  runner "ReminderJob.perform_later"
end
  