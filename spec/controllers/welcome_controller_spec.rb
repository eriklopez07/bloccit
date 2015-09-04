require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index

      expect(response).to render_template("index")
    end
  end

  describe "GET about" do
    it "renders the about template" do
    get :about
    expect(response).to render_template("about")
    end
  end

  describe "GET fqa" do
    it "renders the fqa template" do
      get :fqa
      expect(response).to render_template("fqa")
    end
  end

end
