class StoresController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.user_id = current_user.id
    if @store.save
      redirect_to store_path(@store), notice: 'success!'
    else
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
    if @store.user != current_user
      redirect_to stores_path, alert: '不正なアクセス'
    end
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to store_path(@store), notice: 'success!'
    else
      render :edit
    end
  end

  def destroy
    store = Store.find(params[:id])
    store.destroy
    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:title, :body, :image)
  end

end
