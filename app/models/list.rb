class List < ApplicationRecord
  has_many:list_terms
  has_many :terms, through: :list_terms
  belongs_to :user

  validates :user_id, presence: true
  validates :name, length: {maximum:25} 
end
