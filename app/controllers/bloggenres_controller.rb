class BloggenresController < ApplicationController
  layout 'blog'
  
  def index
    @bloggenres = Bloggenre.all
  end

  def new
    @bloggenre = Bloggenre.new
    
    # 通常はcreateアクションを作るが今回はnewにまとめている
    if request.post? then
      @bloggenre = Bloggenre.create(bloggenre_params)
      redirect_to '/bloggenres', notice: '新規ジャンルが作成されました!'
    end
  end

   # 通常はupdateアクションを作るが今回はeditにまとめている
  def edit
    @bloggenre = Bloggenre.find(params[:id])
    
    if request.patch? then
      @bloggenre.update(bloggenre_params)
      redirect_to '/bloggenres', notice: 'ジャンルが更新されました!'
    end
  end
  
  private
  def bloggenre_params
    params.require(:bloggenre).permit(:name, :memo)
  end
end
