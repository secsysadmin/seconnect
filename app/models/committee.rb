# frozen_string_literal: true

class Committee < ApplicationRecord
     validates :committee_name, presence: true
     has_many :users
end
