class BloggenresController < ApplicationController
  layout 'blog'
  
  def index
    @bloggenres = Bloggenre.all
  end

  def new
    @bloggenre = Bloggenre.new
    
    if request.post? then
      @bloggenre = Bloggenre.create(bloggenre_params)
      redirect_to '/bloggenres'
    end
  end

  def edit
    @bloggenre = Bloggenre.find(params[:id])
    
    if request.patch? then
      @bloggenre.update(bloggenre_params)
      redirect_to '/bloggenres'
    end
  end
  
  private
  def blogconig_params
    params.require(:bloggenre).permit(:name, :memo)
  end
end
