class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id, message: 'Titles cannot be duplicated amongst a single artist.'}

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :shares,
        source: :viewer

    has_many :comments,
        foreign_key: :artwork_id,
        class_name: :Comment,
        dependent: :destroy
end
