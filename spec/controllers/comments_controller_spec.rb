require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:post) { create(:post) }
  let(:comments) { create_list(:comment, 3, post: post) }

  describe "GET index" do
    it "assigns all comments to an instance var called @comments" do
      get :index, post_id: post.to_param
      expect(assigns(:comments)).to eq comments
    end

    it "assigns the post to an instance var called @post" do
      get :index, post_id: post.to_param
      expect(assigns(:post)).to eq post
    end

    describe "comment scope" do
      before { create(:comment) }

      it "only assigns posts in the current category" do
        get :index, post_id: post.to_param
        expect(assigns(:comments)).to eq comments
      end
    end
  end
end
