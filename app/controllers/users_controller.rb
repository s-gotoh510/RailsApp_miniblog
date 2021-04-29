class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    # @nickname = current_user.nickname
    @nickname = user.nickname
    
    @cards = user.cards.page(params[:page]).per(5).order("created_at DESC")
  end
end
