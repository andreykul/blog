class Post < ApplicationRecord

  before_save :update_slug

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  has_many :comments
  has_and_belongs_to_many :topics

  def to_param
    slug
  end

  private

  def update_slug
    self.slug = title.parameterize separator: '_'
  end

end
