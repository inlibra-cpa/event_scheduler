class Reminder < ApplicationRecord
  # Associations
  belongs_to :event

  # Validations
  validates :remind_at, presence: true
  validates :message, presence: true
end
