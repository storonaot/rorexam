require 'rails_helper'

RSpec.describe WorkController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #choose_theme" do
    it "returns http success" do
      get :choose_theme
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #display_theme" do
    it "returns http success" do
      get :display_theme
      expect(response).to have_http_status(:success)
    end
  end

end
