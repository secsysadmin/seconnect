require 'rails_helper'

RSpec.describe "admin_requests_completeds/index", type: :view do
  before(:each) do
    assign(:admin_requests_completeds, [
      AdminRequestsCompleted.create!(),
      AdminRequestsCompleted.create!()
    ])
  end

  it "renders a list of admin_requests_completeds" do
    render
  end
end
