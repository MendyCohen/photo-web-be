 class Api::V1::CategoriesController < ApplicationController
# class CategoriesController < ApplicationController

  # before_action find_only: [:update]

  def index
    @categories = Categories.all
    render json: @categories
  end

  def update
    @categories.update(categories_params)
      if @categories.save
        render json: @categories, status: :accepted
      else
        render json: {errors: @categories.errors.full_messages}, status: :unprocessible_entity
      end
  end

  private
  def categories_params
    params.permit(:name)
  end

  def find_note
    @categories = Categories.find(params[:id])
  end

end
