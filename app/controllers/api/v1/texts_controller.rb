class Api::V1::TextsController < ApplicationController
  def index
    @text = ApiResponse.build_response(params[:text])

    respond_to do |format|
      format.js
      render json: @text
    end
  end
end
