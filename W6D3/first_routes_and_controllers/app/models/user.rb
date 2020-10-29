class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    
    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    has_many :shared_views,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_artworks,
        through: :shared_views,
        source: :artwork
end
