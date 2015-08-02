class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    if current_user
      redirect_to dashboard_path
    end
  end

  def about
  end

  def contact
  end

  def dashboard
    @user = current_user
    @places = @user.places
    @reviews = @user.reviews
  end
end
