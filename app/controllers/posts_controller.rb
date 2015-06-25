class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if params[:publish]
      @post.status = "publish"
      @post.save
      redirect_to dashboard_posts_path
    elsif params[:draft]
      @post.status = "draft"
      @post.save
      redirect_to dashboard_posts_path
    else
      redirect_to dashboard_posts_path
    end
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def edit
    @post = Post.friendly.find(params[:id])
  end

  def update
    @post = Post.friendly.find(params[:id])
    if params[:update]  
      @post.update(post_params)
      redirect_to dashboard_posts_path
    else
      redirect_to dashboard_posts_path
    end
  end

  def destroy
    @post = Post.friendly.find(params[:id])
    @post.destroy
    redirect_to dashboard_posts_path
  end

  private

    def post_params
      params.require(:post).permit(:title, :date, :body, :status)
    end

end
