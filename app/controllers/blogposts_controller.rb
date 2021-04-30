class BlogpostsController < ApplicationController
  layout 'blog'
  
  def index
    @blogposts = Blogpost.all.order('created_at desc')
  end

  def new
    @blogpost = Blogpost.new
    @bloggenres = Bloggenre.all
    
    if request.post? then
      @blogpost.create(blogpost_params)
      redirect_to '/blogposts'
    end
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
    @bloggenres = Bloggenre.all
    
    if request.patch? then
      @blogpost.update(blogpost_params)
      redirect_to '/blogposts'
    end
  end

  def delete
    @blogpost = Blogpost.find(params[:id])
    
    if request.post? then
      @blogpost.destroy
      redirect_to '/blogposts'
    end
  end
  
  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :lead, :content, :bloggenre_id)
  end
end
