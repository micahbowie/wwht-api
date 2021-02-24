class List < ApplicationRecord
  has_many :terms, through: :list_terms 
  belongs_to :user
end
