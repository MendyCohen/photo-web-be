 class Api::V1::PicturesController < ApplicationController
# class PicturesController < ApplicationController

  before_action :find_pictures, only: [:update]

  def index
    @pictures = Pictures.all
    render json: @pictures
  end

  def update
    @pictures.update(pictures_params)
      if @pictures.save
        render json: @pictures, status: :accepted
      else
        render json: {errors: @pictures.errors.full_messages}, status: :unprocessible_entity
      end
  end

  private
  def pictures_params
    params.permit(:name, :camera)
  end

  def find_note
    @pictures = Pictures.find(params[:id])
  end

end
