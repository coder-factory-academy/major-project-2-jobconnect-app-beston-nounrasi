class Job < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumbnail: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
