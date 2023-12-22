class ToppagesController < ApplicationController
  def index
    if logged_in?
     @pagy, @events = pagy(current_user.events.order(id: :desc))
    end
  end
end
