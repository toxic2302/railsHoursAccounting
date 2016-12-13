require "rails_helper"

RSpec.describe PagesController, type: :routing do
  describe "routing" do

    it "routes to root" do
      expect(:get => "/").to route_to("pages#index")
    end

    it "routes to #index" do
      expect(:get => "/pages/index").to route_to("pages#index")
    end

    it "routes to #about" do
      expect(:get => "/pages/about").to route_to("pages#about")
    end

    it "routes to #imprint" do
      expect(:get => "/pages/imprint").to route_to("pages#imprint")
    end
  end
end
