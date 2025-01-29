class Task < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :project, dependent: :destroy

  validates :user , presence: true
  validates :project , presence: true

  scope :completed, -> { where(completed: 1) }
  scope :pending, -> { where(completed: 0) }
end
