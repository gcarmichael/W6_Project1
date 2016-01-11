class FriendsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @photos = Photo.all
    @users = User.all
    @friends = current_user.friendslist(current_user.id)
    # binding.pry
    # @friends = Friend.where('friend_id=? OR self_id=?', current_user.id, current_user.id)
  end

end
