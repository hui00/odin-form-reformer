class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
