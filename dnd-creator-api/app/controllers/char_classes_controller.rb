class CharClassesController < ApplicationController
  before_action :set_char_class, only: [:show]

  # GET /char_classes
  def index
    @char_classes = CharClass.all

    render json: @char_classes
  end

  # GET /char_classes/1
  def show
    render json: @char_class
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char_class
      @char_class = CharClass.find(params[:id])
    end
    
end
