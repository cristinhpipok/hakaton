class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true , format:{with:VALID_EMAIL_REGEX}
  has_many :posts, dependent: :destroy
end
