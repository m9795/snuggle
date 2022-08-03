class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    if post.save
      redirect_to post_path(post), notice: '投稿しました。'
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
    # ヘッダーに全体数を表示
    @post_all = Post.all
    @user_all = User.all
  end

  def show
    @post = Post.find(params[:id])
    # ヘッダーに全体数を表示
    @post_all = Post.all
    @user_all = User.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
  end

  private
  def post_params
    params.require(:post).permit(:image, :title, :content)
  end
end
