class List < ApplicationRecord
  has_many:list_definitions
  has_many :definitions, through: :list_definitions
  belongs_to :user

  validates :user_id, presence: true
  validates :name, length: {maximum:25}

  default_scope { order('id ASC') }
end
