class FriendsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @photos = Photo.all
    #@users = User.all
    @users = User.order(name: :asc)
    @friends = current_user.friendslist(current_user.id)

    @sorted = @friends.sort_by {|f| User.display_name(f.friend_id, f.self_id, current_user, f.friend) }
    

    # binding.pry
    # @friends = Friend.where('friend_id=? OR self_id=?', current_user.id, current_user.id)
  end

  def create
    @friendship = Friend.new
    @friendship.friend_id = params[:friend_id]
    @friendship.self_id = current_user.id
    @friendship.save
    redirect_to(friends_index_path)
  end

end
