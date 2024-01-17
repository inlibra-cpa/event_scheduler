class Event < ApplicationRecord
  # Associations
  belongs_to :calendar
  has_many :reminders, dependent: :destroy

  # Validations
  validates :title, :date, :description, presence: true

  # Scopes
  scope :upcoming_without_reminders, lambda {
  left_joins(:reminders)
    .where(reminders: { id: nil })
    .where('date > ? AND date <= ?', Time.current, Time.current + SETTINGS['reminder_lead_time_minutes'].minutes)
}

  def as_json(options={})
    super(options.merge(only: [:title, :date, :description]))
  end
end
