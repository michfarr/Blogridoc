class CommentsController < ApplicationController
  before_filter :set_post

  def index
    @comments = @post.comments
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save
      redirect_to post_comment_path(@post, @comment), notice: "Comment created successfully"
    else
      render :new
    end
  end

  protected

    def comment_params

    end

    def set_post
      @post = Post.find(params[:post_id])
    end
end
