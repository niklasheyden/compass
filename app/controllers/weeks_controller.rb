class WeeksController < ApplicationController
  def index
    @user = current_user
    @weeks = policy_scope(Week)
    @week = Week.new
    authorize @weeks
  end

  def create
    @user = current_user
    @week_num = Week.count
    @week = Week.new(week_num: @week_num + 1)
    @week.user = current_user
    if @week.save
      redirect_to user_week_path(@user, @week)
    else
      render 'weeks/index'
    end
    authorize @week
  end

  def show
    @user = current_user
    @week = Week.new
    @weeks = @user.weeks
    @current_week = Week.find([params[:id]])
    authorize @current_week
  end

end
