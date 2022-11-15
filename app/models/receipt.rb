# frozen_string_literal: true

class Receipt < ApplicationRecord
     belongs_to :user
     has_many :vendor
     mount_uploader :attachment, AttachmentUploader
end
