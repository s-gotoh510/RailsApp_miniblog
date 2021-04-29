class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    # @nickname = current_user.nickname
    @nickname = user.nickname
    
  end
end
