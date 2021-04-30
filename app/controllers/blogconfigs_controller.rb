class BlogconfigsController < ApplicationController
  layout 'blog'
  
  def index
    @blogconfig = Blogconfig.find(1)
  end

  def edit
    @blogconfig = Blogconfig.find(1)
    
    if request.patch? then
      @blogconfig.update(blogcofig_params)
      redirect_to '/blogconfigs'
      # redirect_to blogconfigs_index_path
    end
  end
  
  private
  def blogconig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylename)
  end
end
