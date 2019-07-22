require 'rails_helper'

RSpec.describe "UserHeros", type: :request do
  describe "GET /user_heros" do
    it "works! (now write some real specs)" do
      get user_heros_path
      expect(response).to have_http_status(200)
    end
  end
end
