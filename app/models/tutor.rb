# frozen_string_literal: true

class Tutor < ApplicationRecord
  has_many :subjects

  validates :name, presence: true
end
