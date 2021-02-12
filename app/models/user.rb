class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :favorites
    has_many :activities, through: :favorites

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 6, maximum: 15}

    has_secure_password
end
