require 'rails_helper'

RSpec.describe CommentsController, type: :routing do
  describe "GET /posts/:post_id/comments" do
    let(:post) { create(:post) }

    it "routes to comments index" do
      route = "/posts/#{post.to_param}/comments"
      expect(get route).to route_to "comments#index", post_id: post.to_param
    end
  end
end
