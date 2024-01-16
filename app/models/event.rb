class Event < ApplicationRecord
  # Associations
  belongs_to :calendar
  has_many :reminders, dependent: :destroy

  # Validations
  validates :title, :date, :description, presence: true
end
