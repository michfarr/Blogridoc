require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    let(:posts) { create_list(:post, 3) }

    it "assigns all posts to the instance var @posts" do
      get :index
      expect(assigns(:posts)).to eq posts
    end

    it "renders the index template" do
      expect(response).to render_template{"index"}
    end
  end

  describe "GET #show" do
    let(:post) { create(:post) }

    it "assigns the post to the instance var @post" do
      get :show, id: post.to_param
      expect(assigns(:post)).to eq post
    end

    it "renders the show template" do
      expect(response).to render_template{"show"}
    end
  end

  describe "GET #new" do
    it "assigns a new post as the instance var @post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end

    it "renders the new template" do
      expect(response).to render_template{"new"}
    end
  end

  describe "GET #edit" do
    let(:post) { create(:post) }

    it "assigns the selected post to the instance var @post" do
      get :edit, id: post.to_param
    end

    it "renders the edit template" do
      expect(response).to render_template{"edit"}
    end
  end
end
