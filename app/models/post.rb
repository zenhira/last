class Post < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, PostImageUploader
  validates :youtube_url, length: { maximum: 255 }
  validates :content, presence: true
  # validates :youtube_url, length: { is: 11 }
end
