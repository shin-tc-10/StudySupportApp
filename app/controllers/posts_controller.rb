class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

def create
  @post = Post.create(post_params)
  redirect_to posts_path
end

def edit
  @post = Post.find(params[:id])

end


def update
  post = Post.find(params[:id])
  post.update(post_params)
  redirect_to root_path
end


def destroy
  post = Post.find(params[:id])
  post.destroy
  redirect_to posts_path
end

def show
end

private

def post_params
  params.require(:post).permit(:text, :title).merge(user_id: current_user.id)
end 

end
