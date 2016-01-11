class PhotoController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resrouce

  def index
    @photos = Photo.all
  end
  
end
