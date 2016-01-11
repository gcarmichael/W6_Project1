class PhotosController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @photos = Photo.all
    @users = User.all
  end
  
end
