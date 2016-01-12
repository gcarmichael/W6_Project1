class PhotosController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @photos = Photo.all
    @users = User.all
  end

  def new
    @photo = Photo.new
  end

  def create
    current_user.photos.create(photo_params)
    redirect_to(photos_index_path)
  end

  def show
    @photo = Photo.find(params[:id])
    @users = User.all
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    photo = Photo.find(params[:id])
    photo.update(photo_params)
    redirect_to(photos_path)
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to(photos_path)
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :image, :description, :user_id)
  end
  
end
