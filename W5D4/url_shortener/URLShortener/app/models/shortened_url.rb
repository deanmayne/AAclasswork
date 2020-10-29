# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  long_url   :string           not null
#  short_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    validates :user_id, presence:true
    validates :long_url, presence:true
    validates :short_url, presence:true, uniqueness:true

    def self.random_code
        random = SecureRandom::urlsafe_base64
        while ShortenedUrl.find_by(short_url: "aa.io/" + random)
            random = SecureRandom::urlsafe_base64
        end
        return random
    end

    def self.url_shorten(long_url,user)
        ShortenedUrl.create!(long_url: long_url, user_id: user.id, short_url: "aa.io/" + ShortenedUrl.random_code)
    end

    def num_clicks
        self.visits.length
    end

    def num_uniques
        self.distinct_visitors.count
    end

    def num_recent_uniques
        self.visits.select(:user_id).distinct.where(created_at: (10.minutes.ago..Time.now)).count
    end

    has_many :visits,
        foreign_key: :url_id,
        class_name: :Visit

    belongs_to :submitter,
        foreign_key: :user_id,
        class_name: :User

    has_many :visitors,
        # Proc.new{distinct},
        through: :visits,
        source: :visitor

    has_many :distinct_visitors,
    Proc.new { distinct }, #<<<
    through: :visits,
    source: :visitor

    
end