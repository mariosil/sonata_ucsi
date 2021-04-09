# frozen_string_literal: true

# Models dealership table
class Dealership < ApplicationRecord
  has_many :cars
end
