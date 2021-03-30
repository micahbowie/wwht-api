class Definition < ApplicationRecord
  belongs_to :term
  has_many :list_definitions
  has_many :lists, through: :list_definitions
  has_many_attached :images

  validates :what, presence: true, length: {minimum:25, maximum: 700 }
  validates :why, presence: true,  length: { minimum:25, maximum: 700 }
  validates :how, presence: true,  length: { minimum:25, maximum: 700 }
  validates :up_vote, presence: true
  # validates :image_type

  default_scope { order('id ASC') }

  private

  def image_type
    images.each do |image|
      if !image.content_type.in?(%('image/jpeg image/png'))
        errors.add(image: "File(s) must be a JPEG or PNG")
      end
    end
  end

end
