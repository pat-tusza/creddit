class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :favorites
    has_many :activities, through: :favorites
    
    has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
    # has_many :senders, through: :sent_messages, source: :sender

    has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
    # has_many :receivers, through: :received_messages, source: :receiver

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 6, maximum: 15}

    has_secure_password
end
