class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :current_user, only: [:edit, :update, :destroy]
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end
  def show
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Post was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  def wall
    @posts = Post.where(category: "Wearable")
  end
  def fall
    @posts = Post.where(category: "Functional")
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :category, :image, :link)
  end
end
