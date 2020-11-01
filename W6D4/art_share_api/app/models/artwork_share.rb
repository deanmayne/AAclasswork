class ArtworkShare < ApplicationRecord
    validates :artwork_id, uniqueness: {scope: :viewer_id, message: 'A user cannot have a single artwork shared with them more than once.'}

    belongs_to :viewer,
        foreign_key: :viewer_id,
        class_name: :User

    belongs_to :artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork
end
