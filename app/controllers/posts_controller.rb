class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
      if params[:query].present? && params[:query]&.length >= 3
        @posts = Post.search_by_title_or_description(params[:query])
        update_posts
      else
        @posts = Post.all
      end
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def update_posts
    render turbo_stream: turbo_stream.replace("posts", partial: "posts/posts", locals: { posts: @posts })
  end

  def record_query(query, user_id)
    return unless query.present? && query.length >= 3

    previous_query = File.read("query.txt").split || [""]

    similarity_check = JaroWinkler.distance(query, previous_query[0], ignore_case: true) >= 0.85

    if similarity_check
      Thread.new do
        sleep(5)
      end
    else
      Search.create(query: query, user_id: user_id)
    end
    File.write("query.txt", query, mode: "w")
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :description, user: current_user)
  end
end
