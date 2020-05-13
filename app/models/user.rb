class User < ApplicationRecord
  has_many :posts
  validates :username, :email, uniqueness: true, presence: true, length: { minimum: 5 }
end
