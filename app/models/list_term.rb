class ListTerm < ApplicationRecord
  belongs_to :list
  belongs_to :term

  validates :list_id, presence: true
  validates :term_id, presence: true
end
