require 'rails_helper'

RSpec.describe "ProjectLists", type: :request do
	describe "GET /project_lists" do
    it "checks connection" do
      get project_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
