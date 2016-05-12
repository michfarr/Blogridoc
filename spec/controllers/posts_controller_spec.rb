require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    let(:posts) { create_list(:post, 3) }

    it "assigns all posts to the instance var @posts" do
      get :index
      expect(assigns(:posts)).to eq posts
    end

    it "renders the index template" do
      expect(response).to render_template{ "index" }
    end
  end

  describe "GET #show" do
    let(:post) { create(:post) }

    it "assigns the post to the instance var @post" do
      get :show, id: post.to_param
      expect(assigns(:post)).to eq post
    end

    it "renders the show template" do
      expect(response).to render_template{ "show" }
    end
  end

  describe "GET #new" do
    it "assigns a new post as the instance var @post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end

    it "renders the new template" do
      expect(response).to render_template{ "new" }
    end
  end

  describe "GET #edit" do
    let(:post) { create(:post) }

    it "assigns the selected post to the instance var @post" do
      get :edit, id: post.to_param
    end

    it "renders the edit template" do
      expect(response).to render_template{ "edit" }
    end
  end

  describe "POST #create" do
    context "using valid params" do
      let(:valid_params) { { post: {
                            title: "title",
                            subtitle: "subtitle",
                            content: "content",
                            image: "image", } }
                         }

      it "creates a new post" do
        expect{
          post :create, valid_params
        }.to change{
          Post.count
        }.by(1)
      end

      it "assigns the new post to the instance var @post" do
        post :create, valid_params
        expect(assigns(:post)).to be_a(Post)
        expect(assigns(:post)).to be_persisted
      end

      it "redirects to the show page for the new @post" do
        post :create, valid_params
        expect(response).to redirect_to(Post.last)
      end
    end

    context "using invalid params" do
      let(:invalid_params) { { post: {
                            title: nil,
                            subtitle: "subtitle",
                            content: "content",
                            image: "image", } }
                         }

      it "assigns the new, unsaved post to the instance var @post" do
        post :create, invalid_params
        expect(assigns(:post)).to be_a(Post)
      end

      it "renders the new page" do
        post :create, invalid_params
        expect(response).to render_template{ "new" }
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_params) { attributes_for(:post) }

      it "assigns the selected post to the instance var @post" do
        post = create(:post)
        put :update, id: post.to_param, post: valid_params
        expect(assigns(:post)).to eq post
      end

      it "updates the selected post" do
        post = create(:post)
        put :update, id: post.to_param, post: valid_params
        post.reload
      end

      it "redirects to the show page for the updated @post" do
        post = create(:post)
        put :update, id: post.to_param, post: valid_params
        expect(response).to redirect_to post
      end
    end

    context "with invalid params" do
      let(:invalid_params) { attributes_for(:post, title: nil) }

      it "assigns the selected post to the instance var @post" do
        post = create(:post)
        put :update, id: post.to_param, post: invalid_params
        expect(assigns(:post)).to eq post
      end

      it "re-renders the edit template" do
        post = create(:post)
        put :update, id: post.to_param, post: invalid_params
        expect(response).to render_template{ "edit" }
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the desired post" do
      post = create(:post)
      expect{
        delete :destroy, id: post.to_param
      }.to change{
        Post.count
      }.by(-1)
    end

    it "redirects to the posts index" do
      post = create(:post)
      expect{
        delete :destroy, id: post.to_param
      }.to change{
        Post.count
      }.by(-1)
      expect(response).to redirect_to posts_url
    end
  end
end
