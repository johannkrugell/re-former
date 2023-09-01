# frozen_string_literal: true

class User < ApplicationRecord
  # User model include username, email, and password
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true, length: { minimum: 5, maximum: 50 }
  validates :password, presence: true, length: { minimum: 5, maximum: 50 }
end
