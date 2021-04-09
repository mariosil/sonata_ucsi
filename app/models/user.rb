# frozen_string_literal: true

# Maps user table
class User < ApplicationRecord
  rolify
  authenticates_with_sorcery!

  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }, if: :new_record?
  validates :password, confirmation: true, if: :new_record?
  validates :password_confirmation, presence: true, if: :new_record?
end
