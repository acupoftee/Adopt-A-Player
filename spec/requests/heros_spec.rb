require 'rails_helper'

RSpec.describe "Heros", type: :request do
  describe "GET /heros" do
    it "works! (now write some real specs)" do
      get heros_path
      expect(response).to have_http_status(200)
    end
  end
end
