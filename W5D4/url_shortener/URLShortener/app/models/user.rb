# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :email, uniqueness: true, presence: true
    
    has_many :submitted_urls,
        foreign_key: :user_id,
        class_name: :ShortenedUrl

    has_many :url_visits,
        foreign_key: :user_id,
        class_name: :Visit

    has_many :visited_urls,
        through: :url_visits,
        source: :url

end