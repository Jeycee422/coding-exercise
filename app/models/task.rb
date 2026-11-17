class Task < ApplicationRecord
  belongs_to :project

  attribute :status, :string, default: "pending"
  validates :title, presence: true
  validates :status, inclusion: { in: %w[pending completed] }
end
