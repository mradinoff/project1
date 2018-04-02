class BlogpostsController < ApplicationController

  def new
    @blogpost = Blogpost.new
  end

  def edit
    @blogpost = Blogpost.find params[:id]
  end

  def index
    @blogpost = Blogpost.all
  end

  def show
    @blogpost = Blogpost.find params[:id]
  end

  def create
    blogpost = Blogpost.new blogpost_params
    if blogpost.save
      redirect_to root_path # it worked!
    else
      render :new
    end
  end

  def update
    blogpost = Blogpost.find params[:id]
    blogpost.update blogpost_params
    redirect_to blogpost
  end

  def destroy
    blogpost = Blogpost.find params[:id]
    blogpost.destroy
    redirect_to blogposts_path
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :date, :content, :image)
  end
end
