class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  scope :completed, -> { where(completed: 1) }
  scope :pending, -> { where(completed: 0) }
end
