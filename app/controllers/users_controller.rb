class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
    @favorites = Favorite.where(user_id: @user.id)
  end

  def favorites
    @user = User.find(params[:id])
  end

end
