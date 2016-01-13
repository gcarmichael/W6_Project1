class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @friends = current_user.friendslist(current_user.id)
    #@users = User.all
    # @users = User.order(name: :asc)
    @other_users = get_other_users
  end

  def get_other_users
    # id = current_user.id
    # @users = User.find_by_sql("SELECT * FROM users WHERE users.id != ?", id)
    @users = User.where.not(id: current_user.id).order(name: :asc)
  end

end