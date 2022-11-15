require 'rails_helper'

RSpec.describe "admin_requests_completeds/edit", type: :view do
  before(:each) do
    @admin_requests_completed = assign(:admin_requests_completed, AdminRequestsCompleted.create!())
  end

  it "renders the edit admin_requests_completed form" do
    render

    assert_select "form[action=?][method=?]", admin_requests_completed_path(@admin_requests_completed), "post" do
    end
  end
end
