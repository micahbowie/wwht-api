class Term < ApplicationRecord
  has_many :lists, through: :list_terms 
end
