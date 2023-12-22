class EventsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user
  
  def index
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  
  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = 'イベントを投稿しました。'
      redirect_to root_url
    else
      @pagy, @events = pagy(current_user.events.order(id: :desc))
      flash.now[:danger] = 'イベントの投稿に失敗しました。'
      render 'toppages/index'
    end
  end
  
  
  def destroy
    @event.destroy
    flash[:success] = 'イベントを削除しました。'
    redirect_back(fallback_location: root_path)
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  
  
  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end
  
  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    unless @micropost
      redirect_to root_url
    end
  end
end




