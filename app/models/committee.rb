# frozen_string_literal: true

class Committee < ApplicationRecord
    validates :committee_name, :budget, presence: true
    has_many :users
end
