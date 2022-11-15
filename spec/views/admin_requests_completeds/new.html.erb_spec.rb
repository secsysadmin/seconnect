require 'rails_helper'

RSpec.describe "admin_requests_completeds/new", type: :view do
  before(:each) do
    assign(:admin_requests_completed, AdminRequestsCompleted.new())
  end

  it "renders new admin_requests_completed form" do
    render

    assert_select "form[action=?][method=?]", admin_requests_completeds_path, "post" do
    end
  end
end
