# frozen_string_literal: true

# Models cars table
class Car < ApplicationRecord
  belongs_to :dealership
end
