class BlogsController < ApplicationController
  layout 'blogs'
  
  def index
    @blogposts = Blogpost.order('created_at desc').page(params[:page]).per(5)
    @blogconfig = Blogconfig.find(1)
  end

  def genre
    @bloggenre = Bloggenre.find(params[:id])
    @blogposts = Blogpost.where('bloggenre_id = ?', params[:id]).order('created_at desc').page(params[:page])
    @blogconfig = Blogconfig.find(1)
  end

  def show
    @blogpost = Blogpost.find(params[:id])
    @blogconfig = Blogconfig.find(1)
  end
end
