class Cat < ApplicationRecord
    COLORS = ['black','white','yellow','orange']
    validates :color, :birth_date, :name, presence: true 
    validates :sex, presence: true, length: {maximum: 1}
    validates_inclusion_of :sex, :in => %w( M F )
    validates_inclusion_of :color, :in => COLORS

    has_many :rental_requests, 
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy
end
