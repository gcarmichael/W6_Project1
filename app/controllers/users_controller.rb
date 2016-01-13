class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @friends = current_user.friendslist(current_user.id)
    #@users = User.all
    @users = User.order(name: :asc)

  end

end