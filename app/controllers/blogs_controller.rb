class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find params[:id]
  end

  def index
    @blog = Blog.all
  end

  def show
    @blog = Blog.find params[:id]
  end

  def create
    blog = Blog.new blog_params
    if blog.save
      redirect_to root_path # it worked!
    else
      render :new
    end
  end

  def update
    blog = Blog.find params[:id]
    blog.update blog_params
    redirect_to blog
  end

  def destroy
    blog = Blog.find params[:id]
    blog.destroy
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :length, :description, :image)
  end
end
