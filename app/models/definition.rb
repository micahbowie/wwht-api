class Definition < ApplicationRecord
  belongs_to :term

  validates :what, presence: true, length: { maximum: 700 }
  validates :why, presence: true,  length: { maximum: 700 }
  validates :how, presence: true,  length: { maximum: 700 }
  validates :up_vote, presence: true

  default_scope { order('id ASC') }
end
