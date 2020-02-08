class ClassJoinsController < ApplicationController
  before_action :set_class_join, only: [:show, :update, :destroy]

  # GET /class_joins
  def index
    @class_joins = ClassJoin.all

    render json: @class_joins
  end

  # GET /class_joins/1
  def show
    render json: @class_join
  end

  # POST /class_joins
  def create
    @class_join = ClassJoin.new(class_join_params)

    if @class_join.save
      render json: @class_join, status: :created, location: @class_join
    else
      render json: @class_join.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /class_joins/1
  def update
    if @class_join.update(class_join_params)
      render json: @class_join
    else
      render json: @class_join.errors, status: :unprocessable_entity
    end
  end

  # DELETE /class_joins/1
  def destroy
    @class_join.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_join
      @class_join = ClassJoin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_join_params
      params.require(:class_join).permit(:character_id, :char_class_id)
    end
end
