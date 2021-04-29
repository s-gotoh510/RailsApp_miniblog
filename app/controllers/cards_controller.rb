class CardsController < ApplicationController
  # layout 'cards'
  before_action :move_to_index, except: [:index, :show, :find]
  
  def index
    @cards = Card.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end
  
  def create
    # @card = Card.new(card_params)
    @card = Card.new(title: card_params[:title], author: card_params[:author], price: card_params[:price], publisher: card_params[:publisher], memo: card_params[:memo], user_id: current_user.id)
    
    if @card.save
      redirect_to new_card_path, notice: '登録が完了しました!'
    else
      # card_validates
      render :new
    end
  end

  def edit
    @card = Card.find(params[:id])
  end
  
  def update
    @card = Card.find(params[:id])
    
    if @card.update(card_params)
      redirect_to root_path, notice: '更新が完了しました!'
    else
      # card_validates
      render :edit
    end
  end
  
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path, notice: '削除が完了しました!'
  end
  
  def find
    # @msg = 'キーワードを入力してください。'
    @cards = Array.new # 空の配列を作成
    @flag = false # 初期表示で「検索結果はありませんでした。」が出力されないようにする
    
    if request.post?
      @flag = true
      
      # card = Card.find(params[:find])
      # @cards.push card
      
      # @cards = Card.where title: params[:find]
      
      # @cards = Card.where "id >= ?", params[:find]
      
      # @cards = Card.where "title like ?", '%' + params[:find] + '%'
      
      # f = params[:find].split ','
      # @cards = Card.where "id >= ? and id <= ?", f[0], f[1]
      
      if params[:find].present? # 空の検索をすると全一致になってしまうので
        f = '%' + params[:find] + '%'
        @cards = Card.where "title like ? or author like ? or publisher like ?", f, f, f
      end
    end
  end
  
  private
  # def card_validates
  #   msgs = ''
  #   @card.errors.messages.each do |key, vals|
  #     vals.each do |val|
  #       msgs += key.to_s + val + '<br>'
  #     end
  #   end
  #   @msg = msgs.html_safe
    
  #   flash[:alert] = @msg
  # end
  
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
