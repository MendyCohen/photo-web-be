 class Api::V1::PhotographersController < ApplicationController
# class PhotographersController < ApplicationController

  # before_action :find_photographer, only: [:update]

  def index
    @photographers = Photographer.all
    render json: @photographers
  end

  def update
    @photographer.update(photographer_params)
      if @photographer.save
        render json: @photographer, status: :accepted
      else
        render json: {errors: @photographer.errors.full_messages}, status: :unprocessible_entity
      end
  end

  private
  def photographer_params
    params.permit(:name, :camera)
  end

  def find_note
    @photographer = Photogrpher.find(params[:id])
  end

end
