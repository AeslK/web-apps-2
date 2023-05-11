class PostsController < ApplicationController

  def index
    @posts = Post.all
  end


  def new
    @post = Post.new
    # render view with new Company form
  end
  
  def create
    # start with a new Company
    @post = Post.new
    # assign user-entered form data to Company's columns
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["body"]
    @post["image"] = params["post"]["image"]
    # save Company row
    @post.save
    # redirect user
    redirect_to "/posts"
  end

  # def new
  #   @post = Post.new
  #   # render posts/new view with new Post form
  # end

  # def create
  #   # start with a new Post
  #   @post = Post.new
  #   # assign user-entered form data to Post's columns
  #   # save Post row
  #   # redirect user
  # end
  
end
