class PhotosController < ApplicationController


def index
  @photos = Photo.all
end

def show
  find_photo
end

def new
@photo = Photo.new
end

def create
  @photo = Photo.new(params_photo)
  if @photo.save
    redirect_to root_path
  else
    render 'new'
  end
end

private

def find_photo
  @photo = Photo.find(params[:id])
end

 def params_photo
    params.require(:photo).permit(:photo1, :photo1_cache, :photo2_cache, :photo3_cache, :photo4_cache, :photo2, :photo3, :photo4)
  end

end
