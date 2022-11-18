# frozen_string_literal: true

class Invoice < ApplicationRecord
     belongs_to :vendor
     has_one_attached :attachement
     has_many :items, dependent: :destroy
     validates :attachement, presence: true
     accepts_nested_attributes_for :items, allow_destroy: true
end

