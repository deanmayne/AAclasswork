class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true 
    validates :password_digest, presence: true
    validates :session_token, presence: true, uniqueness: true 
    validates :password, length: {minimum: 6}, allow_nil:true




    after_initialize :check_session_token 

    has_many :cats, 
    foreign_key: :user_id, 
    class_name: :Cat 

    has_many :requests, 
    foreign_key: :user_id, 
    class_name: :Cat_Rental_Request

    attr_reader :password 


    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64(16)
        self.save!
        self.session_token
    end

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.find_by_credentials(user_name, password)
        user = User.find_by(user_name: user_name)
        if user.nil?
            return nil 
        else 
            if user.is_password?(password)
                user
            else
                nil 
            end

        end

    end

    def ensure_session_token 
        self.session_token ||= SecureRandom::urlsafe_base64 #will give us a random string and we will use as session_token 
    end






end
