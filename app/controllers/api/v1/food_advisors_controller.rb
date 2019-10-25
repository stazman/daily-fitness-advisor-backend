class FoodAdvisorsController < ApplicationController
  before_action :set_food_advisor, only: [:show, :update, :destroy]

  def index
    @food_advisors = FoodAdvisor.all

    render json: @food_advisors
  end

  def show
    render json: @food_advisor
  end

  def create
    @food_advisor = FoodAdvisor.new(food_advisor_params)

    if @food_advisor.save
      render json: @food_advisor
    else
      render json: @food_advisor.errors
    end
  end

  def update
    if @food_advisor.update(food_advisor_params)
      render json: @food_advisor
    else
      render json: @food_advisor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @food_advisor.destroy
  end

  private

    def set_food_advisor
      @food_advisor = FoodAdvisor.find(params[:id])
    end

    def food_advisor_params
      params.require(:food_advisor).permit(:how_big_meals, :how_much_snacked, :how_healthy)
    end
end
