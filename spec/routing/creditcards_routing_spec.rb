require "rails_helper"

RSpec.describe CreditcardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/creditcards").to route_to("creditcards#index")
    end

    it "routes to #new" do
      expect(get: "/creditcards/new").to route_to("creditcards#new")
    end

    it "routes to #show" do
      expect(get: "/creditcards/1").to route_to("creditcards#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/creditcards/1/edit").to route_to("creditcards#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/creditcards").to route_to("creditcards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/creditcards/1").to route_to("creditcards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/creditcards/1").to route_to("creditcards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/creditcards/1").to route_to("creditcards#destroy", id: "1")
    end
  end
end
