class Api::V1::TextsController < ApplicationController
  def index
    @text = ApiResponse.build_response(params[:text])

    puts params[:text]
    puts @text

    respond_to do |format|
      format.js
      render json: @text
    end
  end
end
