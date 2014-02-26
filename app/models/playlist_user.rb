class PlaylistUser < ActiveRecord::Base
  validates :playlist, presence: true
  belongs_to :playlist
  belongs_to :user 
end