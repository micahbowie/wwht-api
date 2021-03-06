class Term < ApplicationRecord
  has_many :definitions

  validates :name, presence: true, length: { maximum: 25 }

  def self.search(search_term)
   if search_term
     where(["lower(name) LIKE ?", "%#{search_term.downcase}%"])
   else
     all
   end
 end

 default_scope { order('id ASC') }
end
