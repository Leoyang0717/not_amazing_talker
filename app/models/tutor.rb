# frozen_string_literal: true

class Tutor < ApplicationRecord
  has_many :tutor_subjects
  has_many :subjects, through: :tutor_subjects

  validates :name, presence: true
end
