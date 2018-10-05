class BlogsController < ApplicationController

  def index
    @articles = Blog.all.reverse
  end

  def show
    find_article
  end

  def new
    @article = Blog.new
    @articles = Blog.all.reverse
  end

  def create
    #@photo = Photo.new(params_photo)
    @article = Blog.new(params_blog)
    if @article.save
     redirect_to blogs_path
    end

  end

  def edit
    find_article
  end

  def update
    find_article
    @article.update(params_blog)
    redirect_to new_blog_path
  end

  def destroy
    find_article
    @article.destroy
    redirect_to new_blog_path
  end

  private

  def find_article
    @article = Blog.find(params[:id])
  end

  def params_blog
    params.require(:blog).permit(:titre, :description, :image, :image_cache, :video, :photos, :photos_cache, :illustration, :illustration_cache )
  end


end







