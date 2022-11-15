require 'rails_helper'

RSpec.describe "admin_requests_completeds/show", type: :view do
  before(:each) do
    @admin_requests_completed = assign(:admin_requests_completed, AdminRequestsCompleted.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
