class Passage < ApplicationRecord
  belongs_to :edition
  belongs_to :reference

  validates :passage, presence: true
  validates :reference_id, uniqueness: { scope: :edition_id }

  delegate :id, to: :edition, prefix: true

  delegate :name, to: :edition, prefix: true
end
