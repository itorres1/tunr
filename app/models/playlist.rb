class Playlist < ActiveRecord::Base
  validates :title, :user, presence: true
  belongs_to :user
  has_many :playlist_purchases
  has_many :purchases, through: :playlist_purchases
  has_many :songs, through: :purchases
  has_many :playlist_users
  has_many :shared_users, through: :playlist_users, source: :user
end