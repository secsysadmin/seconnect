require "rails_helper"

RSpec.describe AtcsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/atcs").to route_to("atcs#index")
    end

    it "routes to #new" do
      expect(get: "/atcs/new").to route_to("atcs#new")
    end

    it "routes to #show" do
      expect(get: "/atcs/1").to route_to("atcs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/atcs/1/edit").to route_to("atcs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/atcs").to route_to("atcs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/atcs/1").to route_to("atcs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/atcs/1").to route_to("atcs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/atcs/1").to route_to("atcs#destroy", id: "1")
    end
  end
end
