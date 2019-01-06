 class Api::V1::PicturesController < ApplicationController
# class PicturesController < ApplicationController

  before_action :find_pictures, only: [:update, :destroy]

  def index
    @pictures = Picture.all
    render json: @pictures
  end

  def create
    @picture = Picture.create(pictures_params)
    render json: @picture
  end

  def update
    @picture.update(pictures_params)
      if @picture.save
        render json: @picture, status: :accepted
      else
        render json: {errors: @picture.errors.full_messages}, status: :unprocessible_entity
      end
  end

  def destroy
    # byebug
    @picture.destroy
  end

  private
  def pictures_params
    params.permit(:photographer_id, :category_id, :title, :image)
  end

  def find_pictures
    @picture = Picture.find(params[:id])
  end

end
