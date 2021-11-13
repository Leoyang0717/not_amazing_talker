# frozen_string_literal: true

class Subject < ApplicationRecord
  has_many :tutor_subjects
  has_many :tutors, through: :tutor_subjects
end
