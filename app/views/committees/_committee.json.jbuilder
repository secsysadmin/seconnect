# frozen_string_literal: true

json.extract!(committee, :id, :committee_name, :budget, :user_id, :created_at, :updated_at)
json.url(committee_url(committee, format: :json))
