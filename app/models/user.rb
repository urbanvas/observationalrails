class User < ApplicationRecord
    has_secure_password

    has_many :observations
    has_many :planets, through: :observations
    has_many :systems, through: :observations

    validates :username, :email, :password, presence: true
    validates :password, length: { in: 3..20 }

    scope :most_recent, -> (limit) { order("created_at desc").limit(limit) }
    scope :planets, -> {Observation.where(user_id: self.id)}
    scope :systems, -> {Observation.where(user_id: self.id)}
end
