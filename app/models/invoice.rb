# frozen_string_literal: true

class Invoice < ApplicationRecord
     belongs_to :vendor
     has_many :items, dependent: :destroy
     accepts_nested_attributes_for :items, allow_destroy: true
end
