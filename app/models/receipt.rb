# frozen_string_literal: true

class Receipt < ApplicationRecord
     belongs_to :user
     has_many :vendor
     has_one_attached :attachment
     validates :attachment, presence: true
     validates :user, presence: true
end
