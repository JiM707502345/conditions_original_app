class ConditionsController < ApplicationController

  def index
  end

  def top
    @conditions_created_at = Condition.all.order("created_at DESC")
    @conditions_point = Condition.all.order("point DESC")
  end

  def new
    @condition = Condition.new
  end

  def create
    @condition = Condition.new(condition_params)
    if @condition.valid?
      @condition.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def condition_params
    params.require(:condition).permit(:nickname, :point)
  end

end
