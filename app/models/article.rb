class Article < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true


  has_attached_file :img, styles: { arcital: "750x400", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/
end
