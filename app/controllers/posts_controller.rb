class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  # GET /posts or /posts.json
  def index
    if params[:query].present?
      @posts = Post.search_by_title_or_description(params[:query])
      update_posts
    end
    @posts = Post.all
  end

  private

  def update_posts
    render turbo_stream: turbo_stream.replace('posts', partial: 'posts/posts', locals: { posts: @posts })
  end
end
