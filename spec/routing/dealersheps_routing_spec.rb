require "rails_helper"

RSpec.describe DealershepsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dealersheps").to route_to("dealersheps#index")
    end

    it "routes to #new" do
      expect(get: "/dealersheps/new").to route_to("dealersheps#new")
    end

    it "routes to #show" do
      expect(get: "/dealersheps/1").to route_to("dealersheps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dealersheps/1/edit").to route_to("dealersheps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dealersheps").to route_to("dealersheps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dealersheps/1").to route_to("dealersheps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dealersheps/1").to route_to("dealersheps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dealersheps/1").to route_to("dealersheps#destroy", id: "1")
    end
  end
end
