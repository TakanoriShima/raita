class ToppagesController < ApplicationController
  def index
    if logged_in?
     @events = Event.all.order(created_at: :desc)  # イベントデータを新しい順に取得
    end
  end
end
