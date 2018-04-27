require 'rails_helper'

RSpec.describe "Saves", type: :request do
  describe "GET /saves" do
    it "works! (now write some real specs)" do
      get saves_path
      expect(response).to have_http_status(200)
    end
  end
end
