class CharClassesController < ApplicationController
  before_action :set_char_class, only: [:show, :update, :destroy]

  # GET /char_classes
  def index
    @char_classes = CharClass.all

    render json: @char_classes
  end

  # GET /char_classes/1
  def show
    render json: @char_class
  end

  # POST /char_classes
  def create
    @char_class = CharClass.new(char_class_params)

    if @char_class.save
      render json: @char_class, status: :created, location: @char_class
    else
      render json: @char_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /char_classes/1
  def update
    if @char_class.update(char_class_params)
      render json: @char_class
    else
      render json: @char_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /char_classes/1
  def destroy
    @char_class.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char_class
      @char_class = CharClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def char_class_params
      params.fetch(:char_class, {})
    end
end
