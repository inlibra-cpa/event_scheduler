class Calendar < ApplicationRecord
    # Associations
  has_many :events, dependent: :destroy

  # Validations
  validates :name, presence: true
end
