require "rails_helper"

RSpec.describe AdminRequestsCompletedsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin_requests_completeds").to route_to("admin_requests_completeds#index")
    end

    it "routes to #new" do
      expect(get: "/admin_requests_completeds/new").to route_to("admin_requests_completeds#new")
    end

    it "routes to #show" do
      expect(get: "/admin_requests_completeds/1").to route_to("admin_requests_completeds#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin_requests_completeds/1/edit").to route_to("admin_requests_completeds#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admin_requests_completeds").to route_to("admin_requests_completeds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin_requests_completeds/1").to route_to("admin_requests_completeds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin_requests_completeds/1").to route_to("admin_requests_completeds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin_requests_completeds/1").to route_to("admin_requests_completeds#destroy", id: "1")
    end
  end
end
