class User < ApplicationRecord
  validates :username, :email, uniqueness: true, presence: true, length: { minimum: 5 }
end
