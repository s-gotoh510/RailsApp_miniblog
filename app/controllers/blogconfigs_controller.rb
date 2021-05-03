class BlogconfigsController < ApplicationController
  layout 'blog'
  
  def index
    @blogconfig = Blogconfig.find(1)
    # @blogconfig = Blogconfig.find(params[:id])
  end

  def edit
    @blogconfig = Blogconfig.find(1)
    # @blogconfig = Blogconfig.find(params[:id])
    
    if request.patch? then
      @blogconfig.update(blogconfig_params)
      redirect_to '/blogconfigs', notice: '更新が完了しました!'
    end
  end
  
  private
  def blogconfig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylename)
  end
end
