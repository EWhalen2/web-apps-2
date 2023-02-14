class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
    @posts["author"] = params["posts"]["author"]
    @posts["city"] = params["posts"]["body"]
    @posts["state"] = params["posts"]["image"]
  end

end
