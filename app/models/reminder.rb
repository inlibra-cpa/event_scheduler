class Reminder < ApplicationRecord
  # Associations
  belongs_to :event

  # Validations
  validates :remind_at, presence: true
  validates :message, presence: true

  def as_json(options={})
    super(options.merge(only: [:remind_at, :message]))
  end
end
